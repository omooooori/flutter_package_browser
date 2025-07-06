// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeUiState {

 List<String> get packages; bool get isLoading; String? get errorMessage;
/// Create a copy of HomeUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeUiStateCopyWith<HomeUiState> get copyWith => _$HomeUiStateCopyWithImpl<HomeUiState>(this as HomeUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeUiState&&const DeepCollectionEquality().equals(other.packages, packages)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(packages),isLoading,errorMessage);

@override
String toString() {
  return 'HomeUiState(packages: $packages, isLoading: $isLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $HomeUiStateCopyWith<$Res>  {
  factory $HomeUiStateCopyWith(HomeUiState value, $Res Function(HomeUiState) _then) = _$HomeUiStateCopyWithImpl;
@useResult
$Res call({
 List<String> packages, bool isLoading, String? errorMessage
});




}
/// @nodoc
class _$HomeUiStateCopyWithImpl<$Res>
    implements $HomeUiStateCopyWith<$Res> {
  _$HomeUiStateCopyWithImpl(this._self, this._then);

  final HomeUiState _self;
  final $Res Function(HomeUiState) _then;

/// Create a copy of HomeUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? packages = null,Object? isLoading = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
packages: null == packages ? _self.packages : packages // ignore: cast_nullable_to_non_nullable
as List<String>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeUiState].
extension HomeUiStatePatterns on HomeUiState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeUiState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeUiState value)  $default,){
final _that = this;
switch (_that) {
case _HomeUiState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeUiState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeUiState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> packages,  bool isLoading,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeUiState() when $default != null:
return $default(_that.packages,_that.isLoading,_that.errorMessage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> packages,  bool isLoading,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _HomeUiState():
return $default(_that.packages,_that.isLoading,_that.errorMessage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> packages,  bool isLoading,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _HomeUiState() when $default != null:
return $default(_that.packages,_that.isLoading,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _HomeUiState implements HomeUiState {
  const _HomeUiState({final  List<String> packages = const [], this.isLoading = false, this.errorMessage}): _packages = packages;
  

 final  List<String> _packages;
@override@JsonKey() List<String> get packages {
  if (_packages is EqualUnmodifiableListView) return _packages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_packages);
}

@override@JsonKey() final  bool isLoading;
@override final  String? errorMessage;

/// Create a copy of HomeUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeUiStateCopyWith<_HomeUiState> get copyWith => __$HomeUiStateCopyWithImpl<_HomeUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeUiState&&const DeepCollectionEquality().equals(other._packages, _packages)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_packages),isLoading,errorMessage);

@override
String toString() {
  return 'HomeUiState(packages: $packages, isLoading: $isLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$HomeUiStateCopyWith<$Res> implements $HomeUiStateCopyWith<$Res> {
  factory _$HomeUiStateCopyWith(_HomeUiState value, $Res Function(_HomeUiState) _then) = __$HomeUiStateCopyWithImpl;
@override @useResult
$Res call({
 List<String> packages, bool isLoading, String? errorMessage
});




}
/// @nodoc
class __$HomeUiStateCopyWithImpl<$Res>
    implements _$HomeUiStateCopyWith<$Res> {
  __$HomeUiStateCopyWithImpl(this._self, this._then);

  final _HomeUiState _self;
  final $Res Function(_HomeUiState) _then;

/// Create a copy of HomeUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? packages = null,Object? isLoading = null,Object? errorMessage = freezed,}) {
  return _then(_HomeUiState(
packages: null == packages ? _self._packages : packages // ignore: cast_nullable_to_non_nullable
as List<String>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
