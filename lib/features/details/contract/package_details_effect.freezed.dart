// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_details_effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PackageDetailsEffect {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackageDetailsEffect);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PackageDetailsEffect()';
}


}

/// @nodoc
class $PackageDetailsEffectCopyWith<$Res>  {
$PackageDetailsEffectCopyWith(PackageDetailsEffect _, $Res Function(PackageDetailsEffect) __);
}


/// Adds pattern-matching-related methods to [PackageDetailsEffect].
extension PackageDetailsEffectPatterns on PackageDetailsEffect {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( None value)?  none,TResult Function( OpenUrl value)?  openUrl,required TResult orElse(),}){
final _that = this;
switch (_that) {
case None() when none != null:
return none(_that);case OpenUrl() when openUrl != null:
return openUrl(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( None value)  none,required TResult Function( OpenUrl value)  openUrl,}){
final _that = this;
switch (_that) {
case None():
return none(_that);case OpenUrl():
return openUrl(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( None value)?  none,TResult? Function( OpenUrl value)?  openUrl,}){
final _that = this;
switch (_that) {
case None() when none != null:
return none(_that);case OpenUrl() when openUrl != null:
return openUrl(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  none,TResult Function( String url)?  openUrl,required TResult orElse(),}) {final _that = this;
switch (_that) {
case None() when none != null:
return none();case OpenUrl() when openUrl != null:
return openUrl(_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  none,required TResult Function( String url)  openUrl,}) {final _that = this;
switch (_that) {
case None():
return none();case OpenUrl():
return openUrl(_that.url);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  none,TResult? Function( String url)?  openUrl,}) {final _that = this;
switch (_that) {
case None() when none != null:
return none();case OpenUrl() when openUrl != null:
return openUrl(_that.url);case _:
  return null;

}
}

}

/// @nodoc


class None implements PackageDetailsEffect {
  const None();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is None);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PackageDetailsEffect.none()';
}


}




/// @nodoc


class OpenUrl implements PackageDetailsEffect {
  const OpenUrl(this.url);
  

 final  String url;

/// Create a copy of PackageDetailsEffect
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OpenUrlCopyWith<OpenUrl> get copyWith => _$OpenUrlCopyWithImpl<OpenUrl>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenUrl&&(identical(other.url, url) || other.url == url));
}


@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString() {
  return 'PackageDetailsEffect.openUrl(url: $url)';
}


}

/// @nodoc
abstract mixin class $OpenUrlCopyWith<$Res> implements $PackageDetailsEffectCopyWith<$Res> {
  factory $OpenUrlCopyWith(OpenUrl value, $Res Function(OpenUrl) _then) = _$OpenUrlCopyWithImpl;
@useResult
$Res call({
 String url
});




}
/// @nodoc
class _$OpenUrlCopyWithImpl<$Res>
    implements $OpenUrlCopyWith<$Res> {
  _$OpenUrlCopyWithImpl(this._self, this._then);

  final OpenUrl _self;
  final $Res Function(OpenUrl) _then;

/// Create a copy of PackageDetailsEffect
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? url = null,}) {
  return _then(OpenUrl(
null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
