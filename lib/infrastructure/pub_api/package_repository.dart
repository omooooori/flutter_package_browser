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
}
