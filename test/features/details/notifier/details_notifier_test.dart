import 'package:flutter_package_browser/domain/models/package_details_result.dart';
import 'package:flutter_package_browser/features/details/contract/package_details_action.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_package_browser/features/details/notifier/package_details_notifier.dart';
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

  test('onAppear loads package details successfully', () async {
    const packageName = 'flutter';
    const description = 'Flutter SDK';
    const publisher = 'flutter.dev';
    const versions = ['3.0.0', '2.10.0'];

    when(() => mockRepository.fetchPackageDetail(packageName)).thenAnswer(
      (_) async => PackageDetailResult(
        description: description,
        publisherId: publisher,
        versions: versions,
      ),
    );

    final notifier = container.read(
      packageDetailsNotifierProvider(packageName).notifier,
    );
    await notifier.send(const PackageDetailsAction.onAppear());

    final state = container.read(packageDetailsNotifierProvider(packageName));
    expect(state.description, equals(description));
    expect(state.publisherId, equals(publisher));
    expect(state.versions, equals(versions));
  });

  test('onAppear sets empty state on failure', () async {
    const packageName = 'invalid';

    when(
      () => mockRepository.fetchPackageDetail(any(that: isA<String>())),
    ).thenThrow(Exception('Not Found'));

    final notifier = container.read(
      packageDetailsNotifierProvider(packageName).notifier,
    );
    await notifier.send(const PackageDetailsAction.onAppear());

    final state = container.read(packageDetailsNotifierProvider(packageName));

    expect(state.description, isEmpty);
    expect(state.publisherId, isEmpty);
    expect(state.versions, isEmpty);
  });
}
