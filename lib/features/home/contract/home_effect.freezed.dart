// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEffect {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEffect);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEffect()';
}


}

/// @nodoc
class $HomeEffectCopyWith<$Res>  {
$HomeEffectCopyWith(HomeEffect _, $Res Function(HomeEffect) __);
}


/// Adds pattern-matching-related methods to [HomeEffect].
extension HomeEffectPatterns on HomeEffect {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( None value)?  none,TResult Function( NavigateToDetails value)?  navigateToDetails,required TResult orElse(),}){
final _that = this;
switch (_that) {
case None() when none != null:
return none(_that);case NavigateToDetails() when navigateToDetails != null:
return navigateToDetails(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( None value)  none,required TResult Function( NavigateToDetails value)  navigateToDetails,}){
final _that = this;
switch (_that) {
case None():
return none(_that);case NavigateToDetails():
return navigateToDetails(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( None value)?  none,TResult? Function( NavigateToDetails value)?  navigateToDetails,}){
final _that = this;
switch (_that) {
case None() when none != null:
return none(_that);case NavigateToDetails() when navigateToDetails != null:
return navigateToDetails(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  none,TResult Function( String packageName)?  navigateToDetails,required TResult orElse(),}) {final _that = this;
switch (_that) {
case None() when none != null:
return none();case NavigateToDetails() when navigateToDetails != null:
return navigateToDetails(_that.packageName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  none,required TResult Function( String packageName)  navigateToDetails,}) {final _that = this;
switch (_that) {
case None():
return none();case NavigateToDetails():
return navigateToDetails(_that.packageName);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  none,TResult? Function( String packageName)?  navigateToDetails,}) {final _that = this;
switch (_that) {
case None() when none != null:
return none();case NavigateToDetails() when navigateToDetails != null:
return navigateToDetails(_that.packageName);case _:
  return null;

}
}

}

/// @nodoc


class None implements HomeEffect {
  const None();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is None);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEffect.none()';
}


}




/// @nodoc


class NavigateToDetails implements HomeEffect {
  const NavigateToDetails(this.packageName);
  

 final  String packageName;

/// Create a copy of HomeEffect
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NavigateToDetailsCopyWith<NavigateToDetails> get copyWith => _$NavigateToDetailsCopyWithImpl<NavigateToDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NavigateToDetails&&(identical(other.packageName, packageName) || other.packageName == packageName));
}


@override
int get hashCode => Object.hash(runtimeType,packageName);

@override
String toString() {
  return 'HomeEffect.navigateToDetails(packageName: $packageName)';
}


}

/// @nodoc
abstract mixin class $NavigateToDetailsCopyWith<$Res> implements $HomeEffectCopyWith<$Res> {
  factory $NavigateToDetailsCopyWith(NavigateToDetails value, $Res Function(NavigateToDetails) _then) = _$NavigateToDetailsCopyWithImpl;
@useResult
$Res call({
 String packageName
});




}
/// @nodoc
class _$NavigateToDetailsCopyWithImpl<$Res>
    implements $NavigateToDetailsCopyWith<$Res> {
  _$NavigateToDetailsCopyWithImpl(this._self, this._then);

  final NavigateToDetails _self;
  final $Res Function(NavigateToDetails) _then;

/// Create a copy of HomeEffect
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? packageName = null,}) {
  return _then(NavigateToDetails(
null == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
