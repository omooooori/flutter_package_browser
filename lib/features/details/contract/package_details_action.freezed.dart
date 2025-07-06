// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_details_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PackageDetailsAction {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackageDetailsAction);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PackageDetailsAction()';
}


}

/// @nodoc
class $PackageDetailsActionCopyWith<$Res>  {
$PackageDetailsActionCopyWith(PackageDetailsAction _, $Res Function(PackageDetailsAction) __);
}


/// Adds pattern-matching-related methods to [PackageDetailsAction].
extension PackageDetailsActionPatterns on PackageDetailsAction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( OnAppear value)?  onAppear,TResult Function( OpenExternalLink value)?  openExternalLink,required TResult orElse(),}){
final _that = this;
switch (_that) {
case OnAppear() when onAppear != null:
return onAppear(_that);case OpenExternalLink() when openExternalLink != null:
return openExternalLink(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( OnAppear value)  onAppear,required TResult Function( OpenExternalLink value)  openExternalLink,}){
final _that = this;
switch (_that) {
case OnAppear():
return onAppear(_that);case OpenExternalLink():
return openExternalLink(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( OnAppear value)?  onAppear,TResult? Function( OpenExternalLink value)?  openExternalLink,}){
final _that = this;
switch (_that) {
case OnAppear() when onAppear != null:
return onAppear(_that);case OpenExternalLink() when openExternalLink != null:
return openExternalLink(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  onAppear,TResult Function()?  openExternalLink,required TResult orElse(),}) {final _that = this;
switch (_that) {
case OnAppear() when onAppear != null:
return onAppear();case OpenExternalLink() when openExternalLink != null:
return openExternalLink();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  onAppear,required TResult Function()  openExternalLink,}) {final _that = this;
switch (_that) {
case OnAppear():
return onAppear();case OpenExternalLink():
return openExternalLink();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  onAppear,TResult? Function()?  openExternalLink,}) {final _that = this;
switch (_that) {
case OnAppear() when onAppear != null:
return onAppear();case OpenExternalLink() when openExternalLink != null:
return openExternalLink();case _:
  return null;

}
}

}

/// @nodoc


class OnAppear implements PackageDetailsAction {
  const OnAppear();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnAppear);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PackageDetailsAction.onAppear()';
}


}




/// @nodoc


class OpenExternalLink implements PackageDetailsAction {
  const OpenExternalLink();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenExternalLink);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PackageDetailsAction.openExternalLink()';
}


}




// dart format on
