import 'package:flutter_package_browser/features/home/contract/home_action.dart';
import 'package:flutter_package_browser/features/home/contract/home_effect.dart';
import 'package:flutter_package_browser/features/home/contract/home_ui_state.dart';
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
      final result = await _repository.fetchPackageNames();
      state = state.copyWith(
        packages: result.packages,
        isLoading: false,
        nextUrl: result.nextUrl,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> loadMore() async {
    if (state.isLoadingMore || state.nextUrl == null) return;
    state = state.copyWith(isLoadingMore: true);
    try {
      final result = await _repository.fetchPackageNames(nextUrl: state.nextUrl);
      state = state.copyWith(
        packages: [...state.packages, ...result.packages],
        nextUrl: result.nextUrl,
        isLoadingMore: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoadingMore: false,
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
