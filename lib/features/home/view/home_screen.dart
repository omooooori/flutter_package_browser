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
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: Row(
          children: [
            Image.asset(
              'assets/images/pubdev_icon.png',
              width: 32,
              height: 32,
            ),
            const SizedBox(width: 12),
            const Text(
              'pub.dev',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: uiState.packages.length,
          itemBuilder: (context, index) {
            final name = uiState.packages[index];
            return Card(
              elevation: 2,
              margin: const EdgeInsets.symmetric(vertical: 8),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: ListTile(
                leading: CircleAvatar(child: Text(name[0].toUpperCase())),
                title: Text(name),
                subtitle: const Text('Tap to see more details'),
                trailing: const Icon(Icons.chevron_right),
                onTap: () => notifier.send(HomeAction.onItemTapped(name)),
              ),
            );
          },
        ),
      ),
    );
  }
}
