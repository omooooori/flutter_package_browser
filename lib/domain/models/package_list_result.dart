import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_list_result.freezed.dart';
part 'package_list_result.g.dart';

@freezed
abstract class PackageListResult with _$PackageListResult {
  const factory PackageListResult({
    required List<String> packages,
  }) = _PackageListResult;

  factory PackageListResult.fromJson(Map<String, dynamic> json) =>
      _$PackageListResultFromJson(json);
}
