import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'password_entity.freezed.dart';
part 'password_entity.g.dart';

@freezed
abstract class PasswordEntity implements _$PasswordEntity {
  const PasswordEntity._();

  const factory PasswordEntity({
    int id,
    String name,
    String username,
    String email,
    String password,
  }) = _PasswordEntity;

  factory PasswordEntity.fromJson(Map<String, dynamic> json) =>
      _$PasswordEntityFromJson(json);
}
