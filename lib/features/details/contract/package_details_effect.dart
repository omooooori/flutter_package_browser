import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_details_effect.freezed.dart';

@freezed
sealed class PackageDetailsEffect with _$PackageDetailsEffect {
  const factory PackageDetailsEffect.none() = None;
  const factory PackageDetailsEffect.openUrl(String url) = OpenUrl;
}
