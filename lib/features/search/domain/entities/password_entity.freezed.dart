// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'password_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PasswordEntity _$PasswordEntityFromJson(Map<String, dynamic> json) {
  return _PasswordEntity.fromJson(json);
}

/// @nodoc
class _$PasswordEntityTearOff {
  const _$PasswordEntityTearOff();

// ignore: unused_element
  _PasswordEntity call(
      {int id, String name, String username, String email, String password}) {
    return _PasswordEntity(
      id: id,
      name: name,
      username: username,
      email: email,
      password: password,
    );
  }

// ignore: unused_element
  PasswordEntity fromJson(Map<String, Object> json) {
    return PasswordEntity.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PasswordEntity = _$PasswordEntityTearOff();

/// @nodoc
mixin _$PasswordEntity {
  int get id;
  String get name;
  String get username;
  String get email;
  String get password;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PasswordEntityCopyWith<PasswordEntity> get copyWith;
}

/// @nodoc
abstract class $PasswordEntityCopyWith<$Res> {
  factory $PasswordEntityCopyWith(
          PasswordEntity value, $Res Function(PasswordEntity) then) =
      _$PasswordEntityCopyWithImpl<$Res>;
  $Res call(
      {int id, String name, String username, String email, String password});
}

/// @nodoc
class _$PasswordEntityCopyWithImpl<$Res>
    implements $PasswordEntityCopyWith<$Res> {
  _$PasswordEntityCopyWithImpl(this._value, this._then);

  final PasswordEntity _value;
  // ignore: unused_field
  final $Res Function(PasswordEntity) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object username = freezed,
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      username: username == freezed ? _value.username : username as String,
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
abstract class _$PasswordEntityCopyWith<$Res>
    implements $PasswordEntityCopyWith<$Res> {
  factory _$PasswordEntityCopyWith(
          _PasswordEntity value, $Res Function(_PasswordEntity) then) =
      __$PasswordEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id, String name, String username, String email, String password});
}

/// @nodoc
class __$PasswordEntityCopyWithImpl<$Res>
    extends _$PasswordEntityCopyWithImpl<$Res>
    implements _$PasswordEntityCopyWith<$Res> {
  __$PasswordEntityCopyWithImpl(
      _PasswordEntity _value, $Res Function(_PasswordEntity) _then)
      : super(_value, (v) => _then(v as _PasswordEntity));

  @override
  _PasswordEntity get _value => super._value as _PasswordEntity;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object username = freezed,
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(_PasswordEntity(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      username: username == freezed ? _value.username : username as String,
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PasswordEntity extends _PasswordEntity {
  const _$_PasswordEntity(
      {this.id, this.name, this.username, this.email, this.password})
      : super._();

  factory _$_PasswordEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_PasswordEntityFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String username;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'PasswordEntity(id: $id, name: $name, username: $username, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PasswordEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$PasswordEntityCopyWith<_PasswordEntity> get copyWith =>
      __$PasswordEntityCopyWithImpl<_PasswordEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PasswordEntityToJson(this);
  }
}

abstract class _PasswordEntity extends PasswordEntity {
  const _PasswordEntity._() : super._();
  const factory _PasswordEntity(
      {int id,
      String name,
      String username,
      String email,
      String password}) = _$_PasswordEntity;

  factory _PasswordEntity.fromJson(Map<String, dynamic> json) =
      _$_PasswordEntity.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get username;
  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$PasswordEntityCopyWith<_PasswordEntity> get copyWith;
}
