// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_list_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PackageListResult {

 List<String> get packages;
/// Create a copy of PackageListResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackageListResultCopyWith<PackageListResult> get copyWith => _$PackageListResultCopyWithImpl<PackageListResult>(this as PackageListResult, _$identity);

  /// Serializes this PackageListResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackageListResult&&const DeepCollectionEquality().equals(other.packages, packages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(packages));

@override
String toString() {
  return 'PackageListResult(packages: $packages)';
}


}

/// @nodoc
abstract mixin class $PackageListResultCopyWith<$Res>  {
  factory $PackageListResultCopyWith(PackageListResult value, $Res Function(PackageListResult) _then) = _$PackageListResultCopyWithImpl;
@useResult
$Res call({
 List<String> packages
});




}
/// @nodoc
class _$PackageListResultCopyWithImpl<$Res>
    implements $PackageListResultCopyWith<$Res> {
  _$PackageListResultCopyWithImpl(this._self, this._then);

  final PackageListResult _self;
  final $Res Function(PackageListResult) _then;

/// Create a copy of PackageListResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? packages = null,}) {
  return _then(_self.copyWith(
packages: null == packages ? _self.packages : packages // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [PackageListResult].
extension PackageListResultPatterns on PackageListResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PackageListResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PackageListResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PackageListResult value)  $default,){
final _that = this;
switch (_that) {
case _PackageListResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PackageListResult value)?  $default,){
final _that = this;
switch (_that) {
case _PackageListResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> packages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PackageListResult() when $default != null:
return $default(_that.packages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> packages)  $default,) {final _that = this;
switch (_that) {
case _PackageListResult():
return $default(_that.packages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> packages)?  $default,) {final _that = this;
switch (_that) {
case _PackageListResult() when $default != null:
return $default(_that.packages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PackageListResult implements PackageListResult {
  const _PackageListResult({required final  List<String> packages}): _packages = packages;
  factory _PackageListResult.fromJson(Map<String, dynamic> json) => _$PackageListResultFromJson(json);

 final  List<String> _packages;
@override List<String> get packages {
  if (_packages is EqualUnmodifiableListView) return _packages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_packages);
}


/// Create a copy of PackageListResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackageListResultCopyWith<_PackageListResult> get copyWith => __$PackageListResultCopyWithImpl<_PackageListResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackageListResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackageListResult&&const DeepCollectionEquality().equals(other._packages, _packages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_packages));

@override
String toString() {
  return 'PackageListResult(packages: $packages)';
}


}

/// @nodoc
abstract mixin class _$PackageListResultCopyWith<$Res> implements $PackageListResultCopyWith<$Res> {
  factory _$PackageListResultCopyWith(_PackageListResult value, $Res Function(_PackageListResult) _then) = __$PackageListResultCopyWithImpl;
@override @useResult
$Res call({
 List<String> packages
});




}
/// @nodoc
class __$PackageListResultCopyWithImpl<$Res>
    implements _$PackageListResultCopyWith<$Res> {
  __$PackageListResultCopyWithImpl(this._self, this._then);

  final _PackageListResult _self;
  final $Res Function(_PackageListResult) _then;

/// Create a copy of PackageListResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? packages = null,}) {
  return _then(_PackageListResult(
packages: null == packages ? _self._packages : packages // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
