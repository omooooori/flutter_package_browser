import 'package:flutter/foundation.dart';
import 'pub_api_client.dart';

class PackageRepository {
  final PubApiClient _client;

  PackageRepository(this._client);

  Future<List<String>> fetchPackageNames() async {
    if (kIsWeb) {
      await Future.delayed(const Duration(milliseconds: 500));
      return ['flutter', 'riverpod', 'http', 'provider', 'go_router'];
    }

    final json = await _client.get('/api/packages');
    final packages = json['packages'] as List;
    return packages.map((pkg) => pkg['name'] as String).toList();
  }

  Future<Map<String, dynamic>> fetchPackageDetail(String name) async {
    if (kIsWeb) {
      await Future.delayed(const Duration(milliseconds: 300));
      return {
        'description': 'A mock description for $name.',
        'versions': ['3.0.0', '2.1.0', '1.0.0'],
        'publisherId': 'mock.publisher'
      };
    }

    final detail = await _client.get('/api/packages/$name');
    final publisher = await _client.get('/api/packages/$name/publisher');

    final versions = (detail['versions'] as List)
        .map((v) => v['version'] as String)
        .toList()
      ..sort(((a, b) => b.compareTo(a))); // newest first

    return {
      'description': detail['latest']['pubspec']['description'] ?? '',
      'versions': versions,
      'publisherId': publisher['publisherId'] ?? '',
    };
  }
}
