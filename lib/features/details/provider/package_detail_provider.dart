import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../home/provider/package_list_provider.dart';

final packageDetailProvider =
    FutureProvider.family<Map<String, dynamic>, String>((ref, name) async {
  final repo = ref.watch(packageRepositoryProvider);
  return repo.fetchPackageDetail(name);
});
