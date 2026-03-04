// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthParams {

 String get email; String get password; String get phoneNumber; String get gender;
/// Create a copy of AuthParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthParamsCopyWith<AuthParams> get copyWith => _$AuthParamsCopyWithImpl<AuthParams>(this as AuthParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthParams&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.gender, gender) || other.gender == gender));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,phoneNumber,gender);

@override
String toString() {
  return 'AuthParams(email: $email, password: $password, phoneNumber: $phoneNumber, gender: $gender)';
}


}

/// @nodoc
abstract mixin class $AuthParamsCopyWith<$Res>  {
  factory $AuthParamsCopyWith(AuthParams value, $Res Function(AuthParams) _then) = _$AuthParamsCopyWithImpl;
@useResult
$Res call({
 String email, String password, String phoneNumber, String gender
});




}
/// @nodoc
class _$AuthParamsCopyWithImpl<$Res>
    implements $AuthParamsCopyWith<$Res> {
  _$AuthParamsCopyWithImpl(this._self, this._then);

  final AuthParams _self;
  final $Res Function(AuthParams) _then;

/// Create a copy of AuthParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,Object? phoneNumber = null,Object? gender = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthParams].
extension AuthParamsPatterns on AuthParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthRequest value)  $default,){
final _that = this;
switch (_that) {
case _AuthRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthRequest value)?  $default,){
final _that = this;
switch (_that) {
case _AuthRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String password,  String phoneNumber,  String gender)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthRequest() when $default != null:
return $default(_that.email,_that.password,_that.phoneNumber,_that.gender);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String password,  String phoneNumber,  String gender)  $default,) {final _that = this;
switch (_that) {
case _AuthRequest():
return $default(_that.email,_that.password,_that.phoneNumber,_that.gender);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String password,  String phoneNumber,  String gender)?  $default,) {final _that = this;
switch (_that) {
case _AuthRequest() when $default != null:
return $default(_that.email,_that.password,_that.phoneNumber,_that.gender);case _:
  return null;

}
}

}

/// @nodoc


class _AuthRequest implements AuthParams {
  const _AuthRequest({required this.email, required this.password, required this.phoneNumber, required this.gender});
  

@override final  String email;
@override final  String password;
@override final  String phoneNumber;
@override final  String gender;

/// Create a copy of AuthParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthRequestCopyWith<_AuthRequest> get copyWith => __$AuthRequestCopyWithImpl<_AuthRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthRequest&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.gender, gender) || other.gender == gender));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,phoneNumber,gender);

@override
String toString() {
  return 'AuthParams(email: $email, password: $password, phoneNumber: $phoneNumber, gender: $gender)';
}


}

/// @nodoc
abstract mixin class _$AuthRequestCopyWith<$Res> implements $AuthParamsCopyWith<$Res> {
  factory _$AuthRequestCopyWith(_AuthRequest value, $Res Function(_AuthRequest) _then) = __$AuthRequestCopyWithImpl;
@override @useResult
$Res call({
 String email, String password, String phoneNumber, String gender
});




}
/// @nodoc
class __$AuthRequestCopyWithImpl<$Res>
    implements _$AuthRequestCopyWith<$Res> {
  __$AuthRequestCopyWithImpl(this._self, this._then);

  final _AuthRequest _self;
  final $Res Function(_AuthRequest) _then;

/// Create a copy of AuthParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? phoneNumber = null,Object? gender = null,}) {
  return _then(_AuthRequest(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
