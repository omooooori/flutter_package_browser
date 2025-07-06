import 'package:flutter_package_browser/domain/models/package_list_result.dart';
import 'package:flutter_package_browser/features/home/contract/home_effect.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_package_browser/features/home/notifier/home_notifier.dart';
import 'package:flutter_package_browser/features/home/contract/home_action.dart';
import 'package:flutter_package_browser/infrastructure/pub_api/package_repository.dart';

class MockPackageRepository extends Mock implements PackageRepository {}

void main() {
  late ProviderContainer container;
  late MockPackageRepository mockRepository;

  setUp(() {
    mockRepository = MockPackageRepository();
    container = ProviderContainer(
      overrides: [packageRepositoryProvider.overrideWithValue(mockRepository)],
    );
    addTearDown(container.dispose);
  });

  test('onAppear loads packages successfully', () async {
    final packages = ['package_a', 'package_b'];
    when(
      () => mockRepository.fetchPackageNames(),
    ).thenAnswer((_) async => PackageListResult(packages: packages));

    final notifier = container.read(homeNotifierProvider.notifier);
    await notifier.send(const HomeAction.onAppear());

    final state = container.read(homeNotifierProvider);
    expect(state.isLoading, isFalse);
    expect(state.errorMessage, isNull);
    expect(state.packages, equals(packages));
  });

  test('onAppear sets errorMessage on failure', () async {
    when(
      () => mockRepository.fetchPackageNames(),
    ).thenThrow(Exception('Network error'));

    final notifier = container.read(homeNotifierProvider.notifier);
    await notifier.send(const HomeAction.onAppear());

    final state = container.read(homeNotifierProvider);
    expect(state.isLoading, isFalse);
    expect(state.packages, isEmpty);
    expect(state.errorMessage, contains('Network error'));
  });

  test('onItemTapped emits NavigateToDetails effect', () async {
    final notifier = container.read(homeNotifierProvider.notifier);
    final name = 'flutter';

    await notifier.send(HomeAction.onItemTapped(name));
    final effect = container.read(homeEffectProvider);

    expect(effect, isA<NavigateToDetails>());
    expect((effect as NavigateToDetails).packageName, equals(name));

    notifier.consumeEffect();
    expect(container.read(homeEffectProvider), const HomeEffect.none());
  });

  test('loadMore adds additional packages to the list', () async {
    // Initial load
    when(() => mockRepository.fetchPackageNames()).thenAnswer(
      (_) async => PackageListResult(packages: ['a', 'b'], nextUrl: '/next'),
    );
    final notifier = container.read(homeNotifierProvider.notifier);
    await notifier.send(const HomeAction.onAppear());

    // Additional load
    when(() => mockRepository.fetchPackageNames(nextUrl: '/next')).thenAnswer(
      (_) async => PackageListResult(packages: ['c', 'd'], nextUrl: null),
    );
    await notifier.loadMore();

    final state = container.read(homeNotifierProvider);
    expect(state.packages, equals(['a', 'b', 'c', 'd']));
    expect(state.nextUrl, isNull);
    expect(state.isLoadingMore, isFalse);
  });

  test(
    'loadMore does not update errorMessage and only resets isLoadingMore on exception',
    () async {
      // Initial load
      when(() => mockRepository.fetchPackageNames()).thenAnswer(
        (_) async => PackageListResult(packages: ['a'], nextUrl: '/next'),
      );
      final notifier = container.read(homeNotifierProvider.notifier);
      await notifier.send(const HomeAction.onAppear());

      // Additional load with exception
      when(
        () => mockRepository.fetchPackageNames(nextUrl: '/next'),
      ).thenThrow(Exception('fail'));
      await notifier.loadMore();

      final state = container.read(homeNotifierProvider);
      expect(state.packages, equals(['a']));
      expect(state.errorMessage, isNull);
      expect(state.isLoadingMore, isFalse);
    },
  );

  test('loadMore does nothing if nextUrl is null', () async {
    // Initial load (nextUrl: null)
    when(() => mockRepository.fetchPackageNames()).thenAnswer(
      (_) async => PackageListResult(packages: ['a'], nextUrl: null),
    );
    final notifier = container.read(homeNotifierProvider.notifier);
    await notifier.send(const HomeAction.onAppear());

    // loadMore should not call fetchPackageNames again if nextUrl is null
    await notifier.loadMore();

    // Should be called only once (initial load)
    verify(() => mockRepository.fetchPackageNames()).called(1);
    // Should never be called with a non-null nextUrl
    verifyNever(
      () => mockRepository.fetchPackageNames(
        nextUrl: any(that: isNotNull, named: 'nextUrl'),
      ),
    );
    final state = container.read(homeNotifierProvider);
    expect(state.packages, equals(['a']));
    expect(state.nextUrl, isNull);
    expect(state.isLoadingMore, isFalse);
  });
}
