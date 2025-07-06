import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_details_action.freezed.dart';

@freezed
sealed class PackageDetailsAction with _$PackageDetailsAction {
  const factory PackageDetailsAction.onAppear() = OnAppear;
  const factory PackageDetailsAction.openExternalLink() = OpenExternalLink;
}
