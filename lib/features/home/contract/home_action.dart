import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_action.freezed.dart';

@freezed
sealed class HomeAction with _$HomeAction {
  const factory HomeAction.onAppear() = OnAppear;
  const factory HomeAction.onItemTapped(String packageName) = OnItemTapped;
}
