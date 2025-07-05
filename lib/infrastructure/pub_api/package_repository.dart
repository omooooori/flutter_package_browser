import 'pub_api_client.dart';

class PackageRepository {
  final PubApiClient _client;

  PackageRepository(this._client);

  Future<List<String>> fetchPackageNames() async {
    final json = await _client.get('/api/packages');
    final packages = json['packages'] as List;
    return packages.map((pkg) => pkg['name'] as String).toList();
  }
}
