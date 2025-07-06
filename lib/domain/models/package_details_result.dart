import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_details_result.freezed.dart';
part 'package_details_result.g.dart';

@freezed
abstract class PackageDetailResult with _$PackageDetailResult {
  const factory PackageDetailResult({
    required String description,
    required String publisherId,
    required List<String> versions,
  }) = _PackageDetailResult;

  factory PackageDetailResult.fromJson(Map<String, dynamic> json) =>
      _$PackageDetailResultFromJson(json);
}
