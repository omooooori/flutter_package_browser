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

    return Scaffold(
      appBar: AppBar(title: const Text('pub.dev')),
      body: Builder(
        builder: (_) {
          if (uiState.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (uiState.errorMessage != null) {
            return Center(child: Text('Error: ${uiState.errorMessage}'));
          }

          if (uiState.packages.isEmpty) {
            return const Center(child: Text('No packages found'));
          }

          return ListView.separated(
            itemCount: uiState.packages.length,
            separatorBuilder: (_, __) => const Divider(height: 1),
            itemBuilder: (context, index) {
              final name = uiState.packages[index];
              return ListTile(
                title: Text(name),
                onTap: () => notifier.send(HomeAction.onItemTapped(name)),
              );
            },
          );
        },
      ),
    );
  }
}
