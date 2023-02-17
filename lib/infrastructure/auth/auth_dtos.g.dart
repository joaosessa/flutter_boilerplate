// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignInBodyDTO _$SignInBodyDTOFromJson(Map<String, dynamic> json) =>
    SignInBodyDTO(
      emailAddress: json['emailAddress'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$SignInBodyDTOToJson(SignInBodyDTO instance) =>
    <String, dynamic>{
      'emailAddress': instance.emailAddress,
      'password': instance.password,
    };

SignInResponseDTO _$SignInResponseDTOFromJson(Map<String, dynamic> json) =>
    SignInResponseDTO(
      token: json['token'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$SignInResponseDTOToJson(SignInResponseDTO instance) =>
    <String, dynamic>{
      'token': instance.token,
      'name': instance.name,
    };
