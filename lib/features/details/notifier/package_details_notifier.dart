import 'package:flutter_package_browser/features/details/contract/package_details_action.dart';
import 'package:flutter_package_browser/features/details/contract/package_details_effect.dart';
import 'package:flutter_package_browser/features/details/contract/package_details_ui_state.dart';
import 'package:flutter_package_browser/infrastructure/pub_api/package_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final packageDetailsEffectProvider = StateProvider<PackageDetailsEffect>(
      (ref) => const PackageDetailsEffect.none(),
);

final packageDetailsNotifierProvider = AutoDisposeNotifierProviderFamily<
    PackageDetailsNotifier, PackageDetailsUiState, String>(
  PackageDetailsNotifier.new,
);

class PackageDetailsNotifier
    extends AutoDisposeFamilyNotifier<PackageDetailsUiState, String> {
  late final PackageRepository _repository;

  String get _packageName => arg;

  @override
  PackageDetailsUiState build(String packageName) {
    _repository = ref.watch(packageRepositoryProvider);
    return const PackageDetailsUiState();
  }

  Future<void> send(PackageDetailsAction action) async {
    action.when(
      onAppear: () async => await _load(),
      openExternalLink: () => _openLink(),
    );
  }

  Future<void> _load() async {
    final detail = await _repository.fetchPackageDetail(_packageName);
    state = state.copyWith(
      description: detail.description,
      versions: detail.versions,
      publisherId: detail.publisherId,
    );
  }

  void _openLink() {
    final homepageUrl = 'https://pub.dev/packages/$_packageName';
    ref.read(packageDetailsEffectProvider.notifier).state =
        PackageDetailsEffect.openUrl(homepageUrl);
  }

  void consumeEffect() {
    ref.read(packageDetailsEffectProvider.notifier).state =
    const PackageDetailsEffect.none();
  }
}