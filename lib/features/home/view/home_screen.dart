import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_package_browser/features/home/contract/home_action.dart';
import 'package:flutter_package_browser/features/home/contract/home_effect.dart';
import 'package:flutter_package_browser/features/home/notifier/home_notifier.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(homeNotifierProvider);
    final notifier = ref.read(homeNotifierProvider.notifier);
    final scrollController = useScrollController();

    ref.listen(homeEffectProvider, (prev, effect) {
      if (effect is NavigateToDetails) {
        notifier.consumeEffect();
        context.push('/details/${effect.packageName}');
      }
    });

    useEffect(() {
      Future.microtask(() {
        notifier.send(const HomeAction.onAppear());
      });
      return null;
    }, const []);

    useEffect(() {
      if (uiState.errorMessage != null) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('エラー'),
              content: Text(_friendlyErrorMessage(uiState.errorMessage!)),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('OK'),
                ),
              ],
            ),
          );
        });
      }
      return null;
    }, [uiState.errorMessage]);

    useEffect(() {
      void onScroll() {
        if (scrollController.position.pixels >= scrollController.position.maxScrollExtent - 100) {
          if (uiState.nextUrl != null && !uiState.isLoadingMore) {
            notifier.loadMore();
          }
        }
      }
      scrollController.addListener(onScroll);
      return () => scrollController.removeListener(onScroll);
    }, [uiState.nextUrl, uiState.isLoadingMore]);

    return Scaffold(
      appBar: AppBar(
        title: const Text('pub.dev'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            tooltip: '再読み込み',
            onPressed: () => notifier.send(const HomeAction.onAppear()),
          ),
        ],
      ),
      body: Builder(
        builder: (_) {
          if (uiState.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (uiState.errorMessage != null) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.error, color: Colors.red, size: 48),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      _friendlyErrorMessage(uiState.errorMessage!),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      foregroundColor: Theme.of(context).colorScheme.onPrimary,
                    ),
                    icon: const Icon(Icons.refresh),
                    label: const Text('再読み込み'),
                    onPressed: () => notifier.send(const HomeAction.onAppear()),
                  ),
                ],
              ),
            );
          }

          if (uiState.packages.isEmpty) {
            return const Center(child: Text('No packages found'));
          }

          return RefreshIndicator(
            color: Theme.of(context).colorScheme.onPrimary,
            backgroundColor: Theme.of(context).colorScheme.primary,
            onRefresh: () async {
              await notifier.send(const HomeAction.onAppear());
            },
            child: ListView.separated(
              controller: scrollController,
              itemCount: uiState.packages.length + (uiState.isLoadingMore ? 1 : 0),
              separatorBuilder: (_, __) => const Divider(height: 1),
              itemBuilder: (context, index) {
                if (index >= uiState.packages.length) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Center(child: CircularProgressIndicator()),
                  );
                }
                final name = uiState.packages[index];
                return ListTile(
                  title: Text(name),
                  onTap: () => notifier.send(HomeAction.onItemTapped(name)),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

String _friendlyErrorMessage(String error) {
  if (error.contains('Network') || error.contains('SocketException')) {
    return 'ネットワークに接続できません。\n機内モードや通信環境をご確認ください。';
  }
  return 'エラーが発生しました: $error';
}
