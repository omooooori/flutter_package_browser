import 'package:flutter_package_browser/features/home/contract/home_action.dart';
import 'package:flutter_package_browser/features/home/contract/home_effect.dart';
import 'package:flutter_package_browser/features/home/contract/home_ui_state.dart';
import 'package:flutter_package_browser/features/home/provider/package_list_provider.dart';
import 'package:flutter_package_browser/infrastructure/pub_api/package_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeEffectProvider = StateProvider<HomeEffect>(
  (ref) => const HomeEffect.none(),
);

final homeNotifierProvider =
    AutoDisposeNotifierProvider<HomeNotifier, HomeUiState>(
  HomeNotifier.new,
);

class HomeNotifier extends AutoDisposeNotifier<HomeUiState> {
  late final PackageRepository _repository;

  @override
  HomeUiState build() {
    _repository = ref.watch(packageRepositoryProvider);
    return const HomeUiState();
  }

  Future<void> send(HomeAction action) async {
    action.when(
      onAppear: () async => await _load(),
      onItemTapped: (packageName) => _navigateTo(packageName),
    );
  }

  Future<void> _load() async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final packages = await _repository.fetchPackageNames();
      state = state.copyWith(packages: packages, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: e.toString(),
      );
    }
  }

  void _navigateTo(String packageName) {
    ref.read(homeEffectProvider.notifier).state =
        HomeEffect.navigateToDetails(packageName);
  }

  void consumeEffect() {
    ref.read(homeEffectProvider.notifier).state = const HomeEffect.none();
  }
}
