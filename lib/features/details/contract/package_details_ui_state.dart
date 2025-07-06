import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_details_ui_state.freezed.dart';

@freezed
abstract class PackageDetailsUiState with _$PackageDetailsUiState {
  const factory PackageDetailsUiState({
    @Default('') String description,
    @Default('') String publisherId,
    @Default([]) List<String> versions,
  }) = _PackageDetailsUiState;
}
