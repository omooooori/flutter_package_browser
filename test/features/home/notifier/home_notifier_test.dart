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
    container = ProviderContainer(overrides: [
      packageRepositoryProvider.overrideWithValue(mockRepository),
    ]);
    addTearDown(container.dispose);
  });

  test('onAppear loads packages successfully', () async {
    final packages = ['package_a', 'package_b'];
    when(() => mockRepository.fetchPackageNames())
        .thenAnswer((_) async => PackageListResult(packages: packages));

    final notifier = container.read(homeNotifierProvider.notifier);
    await notifier.send(const HomeAction.onAppear());

    final state = container.read(homeNotifierProvider);
    expect(state.isLoading, isFalse);
    expect(state.errorMessage, isNull);
    expect(state.packages, equals(packages));
  });

  test('onAppear sets errorMessage on failure', () async {
    when(() => mockRepository.fetchPackageNames())
        .thenThrow(Exception('Network error'));

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
}
