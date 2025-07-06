import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../provider/package_list_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final packageListAsync = ref.watch(packageListProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Packages')),
      body: packageListAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text('Error: $error')),
        data: (packages) {
          return ListView.separated(
            itemCount: packages.length,
            separatorBuilder: (_, __) => const Divider(height: 1),
            itemBuilder: (context, index) {
              final name = packages[index];
              return ListTile(
                title: Text(name),
                onTap: () => context.push('/details/$name'),
              );
            },
          );
        },
      ),
    );
  }
}
