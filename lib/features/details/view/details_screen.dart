import 'package:flutter/material.dart';
import 'package:flutter_package_browser/features/details/contract/package_details_action.dart';
import 'package:flutter_package_browser/features/details/contract/package_details_effect.dart';
import 'package:flutter_package_browser/features/details/notifier/package_details_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailsScreen extends ConsumerWidget {
  final String packageName;

  const DetailsScreen({super.key, required this.packageName});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(packageDetailsNotifierProvider(packageName));
    final notifier = ref.read(packageDetailsNotifierProvider(packageName).notifier);

    ref.listen(packageDetailsEffectProvider, (prev, next) async {
      if (next is OpenUrl) {
        notifier.consumeEffect();
        final uri = Uri.tryParse(next.url);
        if (uri != null && await canLaunchUrl(uri)) {
          await launchUrl(uri, mode: LaunchMode.externalApplication);
        }
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      notifier.send(const PackageDetailsAction.onAppear());
    });

    final isLoading = uiState.description.isEmpty && uiState.versions.isEmpty;

    return Scaffold(
      appBar: AppBar(
        title: Text(packageName),
        actions: [
          IconButton(
            icon: const Icon(Icons.link),
            onPressed: () {
              notifier.send(const PackageDetailsAction.openExternalLink());
            },
          ),
        ],
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSection(
                      title: 'Overview',
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(uiState.description),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              uiState.publisherId,
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    _buildSection(
                      title: 'Versions',
                      child: Column(
                        children: uiState.versions
                            .map((v) => ListTile(title: Text(v)))
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }

  Widget _buildSection({required String title, required Widget child}) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          const SizedBox(height: 8),
          child,
        ],
      ),
    );
  }
}
