// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_details_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PackageDetailsUiState {

 String get description; String get publisherId; List<String> get versions;
/// Create a copy of PackageDetailsUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackageDetailsUiStateCopyWith<PackageDetailsUiState> get copyWith => _$PackageDetailsUiStateCopyWithImpl<PackageDetailsUiState>(this as PackageDetailsUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackageDetailsUiState&&(identical(other.description, description) || other.description == description)&&(identical(other.publisherId, publisherId) || other.publisherId == publisherId)&&const DeepCollectionEquality().equals(other.versions, versions));
}


@override
int get hashCode => Object.hash(runtimeType,description,publisherId,const DeepCollectionEquality().hash(versions));

@override
String toString() {
  return 'PackageDetailsUiState(description: $description, publisherId: $publisherId, versions: $versions)';
}


}

/// @nodoc
abstract mixin class $PackageDetailsUiStateCopyWith<$Res>  {
  factory $PackageDetailsUiStateCopyWith(PackageDetailsUiState value, $Res Function(PackageDetailsUiState) _then) = _$PackageDetailsUiStateCopyWithImpl;
@useResult
$Res call({
 String description, String publisherId, List<String> versions
});




}
/// @nodoc
class _$PackageDetailsUiStateCopyWithImpl<$Res>
    implements $PackageDetailsUiStateCopyWith<$Res> {
  _$PackageDetailsUiStateCopyWithImpl(this._self, this._then);

  final PackageDetailsUiState _self;
  final $Res Function(PackageDetailsUiState) _then;

/// Create a copy of PackageDetailsUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? description = null,Object? publisherId = null,Object? versions = null,}) {
  return _then(_self.copyWith(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,publisherId: null == publisherId ? _self.publisherId : publisherId // ignore: cast_nullable_to_non_nullable
as String,versions: null == versions ? _self.versions : versions // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [PackageDetailsUiState].
extension PackageDetailsUiStatePatterns on PackageDetailsUiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PackageDetailsUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PackageDetailsUiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PackageDetailsUiState value)  $default,){
final _that = this;
switch (_that) {
case _PackageDetailsUiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PackageDetailsUiState value)?  $default,){
final _that = this;
switch (_that) {
case _PackageDetailsUiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String description,  String publisherId,  List<String> versions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PackageDetailsUiState() when $default != null:
return $default(_that.description,_that.publisherId,_that.versions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String description,  String publisherId,  List<String> versions)  $default,) {final _that = this;
switch (_that) {
case _PackageDetailsUiState():
return $default(_that.description,_that.publisherId,_that.versions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String description,  String publisherId,  List<String> versions)?  $default,) {final _that = this;
switch (_that) {
case _PackageDetailsUiState() when $default != null:
return $default(_that.description,_that.publisherId,_that.versions);case _:
  return null;

}
}

}

/// @nodoc


class _PackageDetailsUiState implements PackageDetailsUiState {
  const _PackageDetailsUiState({this.description = '', this.publisherId = '', final  List<String> versions = const []}): _versions = versions;
  

@override@JsonKey() final  String description;
@override@JsonKey() final  String publisherId;
 final  List<String> _versions;
@override@JsonKey() List<String> get versions {
  if (_versions is EqualUnmodifiableListView) return _versions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_versions);
}


/// Create a copy of PackageDetailsUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackageDetailsUiStateCopyWith<_PackageDetailsUiState> get copyWith => __$PackageDetailsUiStateCopyWithImpl<_PackageDetailsUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackageDetailsUiState&&(identical(other.description, description) || other.description == description)&&(identical(other.publisherId, publisherId) || other.publisherId == publisherId)&&const DeepCollectionEquality().equals(other._versions, _versions));
}


@override
int get hashCode => Object.hash(runtimeType,description,publisherId,const DeepCollectionEquality().hash(_versions));

@override
String toString() {
  return 'PackageDetailsUiState(description: $description, publisherId: $publisherId, versions: $versions)';
}


}

/// @nodoc
abstract mixin class _$PackageDetailsUiStateCopyWith<$Res> implements $PackageDetailsUiStateCopyWith<$Res> {
  factory _$PackageDetailsUiStateCopyWith(_PackageDetailsUiState value, $Res Function(_PackageDetailsUiState) _then) = __$PackageDetailsUiStateCopyWithImpl;
@override @useResult
$Res call({
 String description, String publisherId, List<String> versions
});




}
/// @nodoc
class __$PackageDetailsUiStateCopyWithImpl<$Res>
    implements _$PackageDetailsUiStateCopyWith<$Res> {
  __$PackageDetailsUiStateCopyWithImpl(this._self, this._then);

  final _PackageDetailsUiState _self;
  final $Res Function(_PackageDetailsUiState) _then;

/// Create a copy of PackageDetailsUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? description = null,Object? publisherId = null,Object? versions = null,}) {
  return _then(_PackageDetailsUiState(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,publisherId: null == publisherId ? _self.publisherId : publisherId // ignore: cast_nullable_to_non_nullable
as String,versions: null == versions ? _self._versions : versions // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
