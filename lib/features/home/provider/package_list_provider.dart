import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../infrastructure/pub_api/package_repository.dart';
import '../../../../infrastructure/pub_api/pub_api_client.dart';

final pubApiClientProvider = Provider<PubApiClient>((ref) {
  return PubApiClient();
});

final packageRepositoryProvider = Provider<PackageRepository>((ref) {
  final client = ref.watch(pubApiClientProvider);
  return PackageRepository(client);
});

final packageListProvider = FutureProvider<List<String>>((ref) async {
  final repo = ref.watch(packageRepositoryProvider);
  return repo.fetchPackageNames();
});
