// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeAction {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeAction);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeAction()';
}


}

/// @nodoc
class $HomeActionCopyWith<$Res>  {
$HomeActionCopyWith(HomeAction _, $Res Function(HomeAction) __);
}


/// Adds pattern-matching-related methods to [HomeAction].
extension HomeActionPatterns on HomeAction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( OnAppear value)?  onAppear,TResult Function( OnItemTapped value)?  onItemTapped,required TResult orElse(),}){
final _that = this;
switch (_that) {
case OnAppear() when onAppear != null:
return onAppear(_that);case OnItemTapped() when onItemTapped != null:
return onItemTapped(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( OnAppear value)  onAppear,required TResult Function( OnItemTapped value)  onItemTapped,}){
final _that = this;
switch (_that) {
case OnAppear():
return onAppear(_that);case OnItemTapped():
return onItemTapped(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( OnAppear value)?  onAppear,TResult? Function( OnItemTapped value)?  onItemTapped,}){
final _that = this;
switch (_that) {
case OnAppear() when onAppear != null:
return onAppear(_that);case OnItemTapped() when onItemTapped != null:
return onItemTapped(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  onAppear,TResult Function( String packageName)?  onItemTapped,required TResult orElse(),}) {final _that = this;
switch (_that) {
case OnAppear() when onAppear != null:
return onAppear();case OnItemTapped() when onItemTapped != null:
return onItemTapped(_that.packageName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  onAppear,required TResult Function( String packageName)  onItemTapped,}) {final _that = this;
switch (_that) {
case OnAppear():
return onAppear();case OnItemTapped():
return onItemTapped(_that.packageName);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  onAppear,TResult? Function( String packageName)?  onItemTapped,}) {final _that = this;
switch (_that) {
case OnAppear() when onAppear != null:
return onAppear();case OnItemTapped() when onItemTapped != null:
return onItemTapped(_that.packageName);case _:
  return null;

}
}

}

/// @nodoc


class OnAppear implements HomeAction {
  const OnAppear();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnAppear);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeAction.onAppear()';
}


}




/// @nodoc


class OnItemTapped implements HomeAction {
  const OnItemTapped(this.packageName);
  

 final  String packageName;

/// Create a copy of HomeAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnItemTappedCopyWith<OnItemTapped> get copyWith => _$OnItemTappedCopyWithImpl<OnItemTapped>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnItemTapped&&(identical(other.packageName, packageName) || other.packageName == packageName));
}


@override
int get hashCode => Object.hash(runtimeType,packageName);

@override
String toString() {
  return 'HomeAction.onItemTapped(packageName: $packageName)';
}


}

/// @nodoc
abstract mixin class $OnItemTappedCopyWith<$Res> implements $HomeActionCopyWith<$Res> {
  factory $OnItemTappedCopyWith(OnItemTapped value, $Res Function(OnItemTapped) _then) = _$OnItemTappedCopyWithImpl;
@useResult
$Res call({
 String packageName
});




}
/// @nodoc
class _$OnItemTappedCopyWithImpl<$Res>
    implements $OnItemTappedCopyWith<$Res> {
  _$OnItemTappedCopyWithImpl(this._self, this._then);

  final OnItemTapped _self;
  final $Res Function(OnItemTapped) _then;

/// Create a copy of HomeAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? packageName = null,}) {
  return _then(OnItemTapped(
null == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
