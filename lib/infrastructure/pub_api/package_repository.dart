import 'package:flutter/foundation.dart';
import 'package:flutter_package_browser/domain/models/package_details_result.dart';
import 'package:flutter_package_browser/domain/models/package_list_result.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'pub_api_client.dart';

final packageRepositoryProvider = Provider<PackageRepository>((ref) {
  final client = ref.read(pubApiClientProvider);
  return PackageRepository(client);
});

class PackageRepository {
  final PubApiClient _client;

  PackageRepository(this._client);

  Future<PackageListResult> fetchPackageNames({String? nextUrl}) async {
    if (kIsWeb) {
      await Future.delayed(const Duration(milliseconds: 500));
      return const PackageListResult(
        packages: ['flutter', 'riverpod', 'http', 'provider', 'go_router'],
      );
    }

    final path = nextUrl ?? '/api/packages';
    final json = await _client.get(path);
    final packages = json['packages'] as List;
    final names = packages.map((pkg) => pkg['name'] as String).toList();
    final next = json['next_url'] as String?;

    return PackageListResult(packages: names, nextUrl: next);
  }

  Future<PackageDetailResult> fetchPackageDetail(String name) async {
    if (kIsWeb) {
      await Future.delayed(const Duration(milliseconds: 300));
      return PackageDetailResult(
        description: 'A mock description for $name.',
        versions: ['3.0.0', '2.1.0', '1.0.0'],
        publisherId: 'mock.publisher',
      );
    }

    final detail = await _client.get('/api/packages/$name');
    final publisher = await _client.get('/api/packages/$name/publisher');

    final versions = (detail['versions'] as List)
        .map((v) => v['version'] as String)
        .toList()
      ..sort(((a, b) => b.compareTo(a))); // newest first

    return PackageDetailResult(
      description: detail['latest']['pubspec']['description'] ?? '',
      versions: versions,
      publisherId: publisher['publisherId'] ?? '',
    );
  }
}
