// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthRequest _$AuthRequestFromJson(Map<String, dynamic> json) => _AuthRequest(
  email: json['email'] as String,
  password: json['password'] as String,
  phoneNumber: json['phoneNumber'] as String,
  gender: json['gender'] as String,
);

Map<String, dynamic> _$AuthRequestToJson(_AuthRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'phoneNumber': instance.phoneNumber,
      'gender': instance.gender,
    };
