import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_effect.freezed.dart';

@freezed
sealed class HomeEffect with _$HomeEffect {
  const factory HomeEffect.none() = None;
  const factory HomeEffect.navigateToDetails(String packageName) =
      NavigateToDetails;
}
