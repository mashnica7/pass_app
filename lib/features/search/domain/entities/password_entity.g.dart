// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PasswordEntity _$_$_PasswordEntityFromJson(Map<String, dynamic> json) {
  return _$_PasswordEntity(
    id: json['id'] as int,
    name: json['name'] as String,
    username: json['username'] as String,
    email: json['email'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$_$_PasswordEntityToJson(_$_PasswordEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
    };
