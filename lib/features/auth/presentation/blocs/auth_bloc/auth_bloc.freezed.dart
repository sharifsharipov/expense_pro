// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {

 AuthParams get params;
/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthEventCopyWith<AuthEvent> get copyWith => _$AuthEventCopyWithImpl<AuthEvent>(this as AuthEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'AuthEvent(params: $params)';
}


}

/// @nodoc
abstract mixin class $AuthEventCopyWith<$Res>  {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) _then) = _$AuthEventCopyWithImpl;
@useResult
$Res call({
 AuthParams params
});


$AuthParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._self, this._then);

  final AuthEvent _self;
  final $Res Function(AuthEvent) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? params = null,}) {
  return _then(_self.copyWith(
params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as AuthParams,
  ));
}
/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthParamsCopyWith<$Res> get params {
  
  return $AuthParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Auth value)?  auth,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Auth() when auth != null:
return auth(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Auth value)  auth,}){
final _that = this;
switch (_that) {
case _Auth():
return auth(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Auth value)?  auth,}){
final _that = this;
switch (_that) {
case _Auth() when auth != null:
return auth(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( AuthParams params)?  auth,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Auth() when auth != null:
return auth(_that.params);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( AuthParams params)  auth,}) {final _that = this;
switch (_that) {
case _Auth():
return auth(_that.params);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( AuthParams params)?  auth,}) {final _that = this;
switch (_that) {
case _Auth() when auth != null:
return auth(_that.params);case _:
  return null;

}
}

}

/// @nodoc


class _Auth implements AuthEvent {
  const _Auth({required this.params});
  

@override final  AuthParams params;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthCopyWith<_Auth> get copyWith => __$AuthCopyWithImpl<_Auth>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Auth&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'AuthEvent.auth(params: $params)';
}


}

/// @nodoc
abstract mixin class _$AuthCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$AuthCopyWith(_Auth value, $Res Function(_Auth) _then) = __$AuthCopyWithImpl;
@override @useResult
$Res call({
 AuthParams params
});


@override $AuthParamsCopyWith<$Res> get params;

}
/// @nodoc
class __$AuthCopyWithImpl<$Res>
    implements _$AuthCopyWith<$Res> {
  __$AuthCopyWithImpl(this._self, this._then);

  final _Auth _self;
  final $Res Function(_Auth) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(_Auth(
params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as AuthParams,
  ));
}

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthParamsCopyWith<$Res> get params {
  
  return $AuthParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc
mixin _$AuthState {

 Status get status; Failure get failure; AuthEntity? get authEntity;
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthStateCopyWith<AuthState> get copyWith => _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState&&(identical(other.status, status) || other.status == status)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.authEntity, authEntity) || other.authEntity == authEntity));
}


@override
int get hashCode => Object.hash(runtimeType,status,failure,authEntity);

@override
String toString() {
  return 'AuthState(status: $status, failure: $failure, authEntity: $authEntity)';
}


}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res>  {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) = _$AuthStateCopyWithImpl;
@useResult
$Res call({
 Status status, Failure failure, AuthEntity? authEntity
});


$AuthEntityCopyWith<$Res>? get authEntity;

}
/// @nodoc
class _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._self, this._then);

  final AuthState _self;
  final $Res Function(AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? failure = null,Object? authEntity = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,failure: null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,authEntity: freezed == authEntity ? _self.authEntity : authEntity // ignore: cast_nullable_to_non_nullable
as AuthEntity?,
  ));
}
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthEntityCopyWith<$Res>? get authEntity {
    if (_self.authEntity == null) {
    return null;
  }

  return $AuthEntityCopyWith<$Res>(_self.authEntity!, (value) {
    return _then(_self.copyWith(authEntity: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Status status,  Failure failure,  AuthEntity? authEntity)?  initial,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.status,_that.failure,_that.authEntity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Status status,  Failure failure,  AuthEntity? authEntity)  initial,}) {final _that = this;
switch (_that) {
case _Initial():
return initial(_that.status,_that.failure,_that.authEntity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Status status,  Failure failure,  AuthEntity? authEntity)?  initial,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.status,_that.failure,_that.authEntity);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AuthState {
  const _Initial({this.status = Status.pure, this.failure = const UnknownFailure(), this.authEntity});
  

@override@JsonKey() final  Status status;
@override@JsonKey() final  Failure failure;
@override final  AuthEntity? authEntity;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&(identical(other.status, status) || other.status == status)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.authEntity, authEntity) || other.authEntity == authEntity));
}


@override
int get hashCode => Object.hash(runtimeType,status,failure,authEntity);

@override
String toString() {
  return 'AuthState.initial(status: $status, failure: $failure, authEntity: $authEntity)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 Status status, Failure failure, AuthEntity? authEntity
});


@override $AuthEntityCopyWith<$Res>? get authEntity;

}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? failure = null,Object? authEntity = freezed,}) {
  return _then(_Initial(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,failure: null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,authEntity: freezed == authEntity ? _self.authEntity : authEntity // ignore: cast_nullable_to_non_nullable
as AuthEntity?,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthEntityCopyWith<$Res>? get authEntity {
    if (_self.authEntity == null) {
    return null;
  }

  return $AuthEntityCopyWith<$Res>(_self.authEntity!, (value) {
    return _then(_self.copyWith(authEntity: value));
  });
}
}

// dart format on
