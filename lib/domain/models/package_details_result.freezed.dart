// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_details_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PackageDetailResult {

 String get description; String get publisherId; List<String> get versions;
/// Create a copy of PackageDetailResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackageDetailResultCopyWith<PackageDetailResult> get copyWith => _$PackageDetailResultCopyWithImpl<PackageDetailResult>(this as PackageDetailResult, _$identity);

  /// Serializes this PackageDetailResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackageDetailResult&&(identical(other.description, description) || other.description == description)&&(identical(other.publisherId, publisherId) || other.publisherId == publisherId)&&const DeepCollectionEquality().equals(other.versions, versions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,publisherId,const DeepCollectionEquality().hash(versions));

@override
String toString() {
  return 'PackageDetailResult(description: $description, publisherId: $publisherId, versions: $versions)';
}


}

/// @nodoc
abstract mixin class $PackageDetailResultCopyWith<$Res>  {
  factory $PackageDetailResultCopyWith(PackageDetailResult value, $Res Function(PackageDetailResult) _then) = _$PackageDetailResultCopyWithImpl;
@useResult
$Res call({
 String description, String publisherId, List<String> versions
});




}
/// @nodoc
class _$PackageDetailResultCopyWithImpl<$Res>
    implements $PackageDetailResultCopyWith<$Res> {
  _$PackageDetailResultCopyWithImpl(this._self, this._then);

  final PackageDetailResult _self;
  final $Res Function(PackageDetailResult) _then;

/// Create a copy of PackageDetailResult
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


/// Adds pattern-matching-related methods to [PackageDetailResult].
extension PackageDetailResultPatterns on PackageDetailResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PackageDetailResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PackageDetailResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PackageDetailResult value)  $default,){
final _that = this;
switch (_that) {
case _PackageDetailResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PackageDetailResult value)?  $default,){
final _that = this;
switch (_that) {
case _PackageDetailResult() when $default != null:
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
case _PackageDetailResult() when $default != null:
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
case _PackageDetailResult():
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
case _PackageDetailResult() when $default != null:
return $default(_that.description,_that.publisherId,_that.versions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PackageDetailResult implements PackageDetailResult {
  const _PackageDetailResult({required this.description, required this.publisherId, required final  List<String> versions}): _versions = versions;
  factory _PackageDetailResult.fromJson(Map<String, dynamic> json) => _$PackageDetailResultFromJson(json);

@override final  String description;
@override final  String publisherId;
 final  List<String> _versions;
@override List<String> get versions {
  if (_versions is EqualUnmodifiableListView) return _versions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_versions);
}


/// Create a copy of PackageDetailResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackageDetailResultCopyWith<_PackageDetailResult> get copyWith => __$PackageDetailResultCopyWithImpl<_PackageDetailResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackageDetailResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackageDetailResult&&(identical(other.description, description) || other.description == description)&&(identical(other.publisherId, publisherId) || other.publisherId == publisherId)&&const DeepCollectionEquality().equals(other._versions, _versions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,publisherId,const DeepCollectionEquality().hash(_versions));

@override
String toString() {
  return 'PackageDetailResult(description: $description, publisherId: $publisherId, versions: $versions)';
}


}

/// @nodoc
abstract mixin class _$PackageDetailResultCopyWith<$Res> implements $PackageDetailResultCopyWith<$Res> {
  factory _$PackageDetailResultCopyWith(_PackageDetailResult value, $Res Function(_PackageDetailResult) _then) = __$PackageDetailResultCopyWithImpl;
@override @useResult
$Res call({
 String description, String publisherId, List<String> versions
});




}
/// @nodoc
class __$PackageDetailResultCopyWithImpl<$Res>
    implements _$PackageDetailResultCopyWith<$Res> {
  __$PackageDetailResultCopyWithImpl(this._self, this._then);

  final _PackageDetailResult _self;
  final $Res Function(_PackageDetailResult) _then;

/// Create a copy of PackageDetailResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? description = null,Object? publisherId = null,Object? versions = null,}) {
  return _then(_PackageDetailResult(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,publisherId: null == publisherId ? _self.publisherId : publisherId // ignore: cast_nullable_to_non_nullable
as String,versions: null == versions ? _self._versions : versions // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
