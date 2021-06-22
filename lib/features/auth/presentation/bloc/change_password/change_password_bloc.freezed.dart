// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'change_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ChangePasswordEventTearOff {
  const _$ChangePasswordEventTearOff();

// ignore: unused_element
  _ChangePasswordPressed changePasswordPressed() {
    return const _ChangePasswordPressed();
  }

// ignore: unused_element
  _CurrentPasswordChanged currentPasswordChanged(String passwordStr) {
    return _CurrentPasswordChanged(
      passwordStr,
    );
  }

// ignore: unused_element
  _NewPasswordChanged newPasswordChanged(String passwordStr) {
    return _NewPasswordChanged(
      passwordStr,
    );
  }

// ignore: unused_element
  _RetypedNewPasswordChanged retypedNewPasswordChanged(String passwordStr) {
    return _RetypedNewPasswordChanged(
      passwordStr,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ChangePasswordEvent = _$ChangePasswordEventTearOff();

/// @nodoc
mixin _$ChangePasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changePasswordPressed(),
    @required TResult currentPasswordChanged(String passwordStr),
    @required TResult newPasswordChanged(String passwordStr),
    @required TResult retypedNewPasswordChanged(String passwordStr),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changePasswordPressed(),
    TResult currentPasswordChanged(String passwordStr),
    TResult newPasswordChanged(String passwordStr),
    TResult retypedNewPasswordChanged(String passwordStr),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changePasswordPressed(_ChangePasswordPressed value),
    @required TResult currentPasswordChanged(_CurrentPasswordChanged value),
    @required TResult newPasswordChanged(_NewPasswordChanged value),
    @required
        TResult retypedNewPasswordChanged(_RetypedNewPasswordChanged value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changePasswordPressed(_ChangePasswordPressed value),
    TResult currentPasswordChanged(_CurrentPasswordChanged value),
    TResult newPasswordChanged(_NewPasswordChanged value),
    TResult retypedNewPasswordChanged(_RetypedNewPasswordChanged value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ChangePasswordEventCopyWith<$Res> {
  factory $ChangePasswordEventCopyWith(
          ChangePasswordEvent value, $Res Function(ChangePasswordEvent) then) =
      _$ChangePasswordEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChangePasswordEventCopyWithImpl<$Res>
    implements $ChangePasswordEventCopyWith<$Res> {
  _$ChangePasswordEventCopyWithImpl(this._value, this._then);

  final ChangePasswordEvent _value;
  // ignore: unused_field
  final $Res Function(ChangePasswordEvent) _then;
}

/// @nodoc
abstract class _$ChangePasswordPressedCopyWith<$Res> {
  factory _$ChangePasswordPressedCopyWith(_ChangePasswordPressed value,
          $Res Function(_ChangePasswordPressed) then) =
      __$ChangePasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ChangePasswordPressedCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements _$ChangePasswordPressedCopyWith<$Res> {
  __$ChangePasswordPressedCopyWithImpl(_ChangePasswordPressed _value,
      $Res Function(_ChangePasswordPressed) _then)
      : super(_value, (v) => _then(v as _ChangePasswordPressed));

  @override
  _ChangePasswordPressed get _value => super._value as _ChangePasswordPressed;
}

/// @nodoc
class _$_ChangePasswordPressed
    with DiagnosticableTreeMixin
    implements _ChangePasswordPressed {
  const _$_ChangePasswordPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChangePasswordEvent.changePasswordPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ChangePasswordEvent.changePasswordPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ChangePasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changePasswordPressed(),
    @required TResult currentPasswordChanged(String passwordStr),
    @required TResult newPasswordChanged(String passwordStr),
    @required TResult retypedNewPasswordChanged(String passwordStr),
  }) {
    assert(changePasswordPressed != null);
    assert(currentPasswordChanged != null);
    assert(newPasswordChanged != null);
    assert(retypedNewPasswordChanged != null);
    return changePasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changePasswordPressed(),
    TResult currentPasswordChanged(String passwordStr),
    TResult newPasswordChanged(String passwordStr),
    TResult retypedNewPasswordChanged(String passwordStr),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changePasswordPressed != null) {
      return changePasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changePasswordPressed(_ChangePasswordPressed value),
    @required TResult currentPasswordChanged(_CurrentPasswordChanged value),
    @required TResult newPasswordChanged(_NewPasswordChanged value),
    @required
        TResult retypedNewPasswordChanged(_RetypedNewPasswordChanged value),
  }) {
    assert(changePasswordPressed != null);
    assert(currentPasswordChanged != null);
    assert(newPasswordChanged != null);
    assert(retypedNewPasswordChanged != null);
    return changePasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changePasswordPressed(_ChangePasswordPressed value),
    TResult currentPasswordChanged(_CurrentPasswordChanged value),
    TResult newPasswordChanged(_NewPasswordChanged value),
    TResult retypedNewPasswordChanged(_RetypedNewPasswordChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changePasswordPressed != null) {
      return changePasswordPressed(this);
    }
    return orElse();
  }
}

abstract class _ChangePasswordPressed implements ChangePasswordEvent {
  const factory _ChangePasswordPressed() = _$_ChangePasswordPressed;
}

/// @nodoc
abstract class _$CurrentPasswordChangedCopyWith<$Res> {
  factory _$CurrentPasswordChangedCopyWith(_CurrentPasswordChanged value,
          $Res Function(_CurrentPasswordChanged) then) =
      __$CurrentPasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class __$CurrentPasswordChangedCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements _$CurrentPasswordChangedCopyWith<$Res> {
  __$CurrentPasswordChangedCopyWithImpl(_CurrentPasswordChanged _value,
      $Res Function(_CurrentPasswordChanged) _then)
      : super(_value, (v) => _then(v as _CurrentPasswordChanged));

  @override
  _CurrentPasswordChanged get _value => super._value as _CurrentPasswordChanged;

  @override
  $Res call({
    Object passwordStr = freezed,
  }) {
    return _then(_CurrentPasswordChanged(
      passwordStr == freezed ? _value.passwordStr : passwordStr as String,
    ));
  }
}

/// @nodoc
class _$_CurrentPasswordChanged
    with DiagnosticableTreeMixin
    implements _CurrentPasswordChanged {
  const _$_CurrentPasswordChanged(this.passwordStr)
      : assert(passwordStr != null);

  @override
  final String passwordStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChangePasswordEvent.currentPasswordChanged(passwordStr: $passwordStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ChangePasswordEvent.currentPasswordChanged'))
      ..add(DiagnosticsProperty('passwordStr', passwordStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CurrentPasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @JsonKey(ignore: true)
  @override
  _$CurrentPasswordChangedCopyWith<_CurrentPasswordChanged> get copyWith =>
      __$CurrentPasswordChangedCopyWithImpl<_CurrentPasswordChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changePasswordPressed(),
    @required TResult currentPasswordChanged(String passwordStr),
    @required TResult newPasswordChanged(String passwordStr),
    @required TResult retypedNewPasswordChanged(String passwordStr),
  }) {
    assert(changePasswordPressed != null);
    assert(currentPasswordChanged != null);
    assert(newPasswordChanged != null);
    assert(retypedNewPasswordChanged != null);
    return currentPasswordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changePasswordPressed(),
    TResult currentPasswordChanged(String passwordStr),
    TResult newPasswordChanged(String passwordStr),
    TResult retypedNewPasswordChanged(String passwordStr),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (currentPasswordChanged != null) {
      return currentPasswordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changePasswordPressed(_ChangePasswordPressed value),
    @required TResult currentPasswordChanged(_CurrentPasswordChanged value),
    @required TResult newPasswordChanged(_NewPasswordChanged value),
    @required
        TResult retypedNewPasswordChanged(_RetypedNewPasswordChanged value),
  }) {
    assert(changePasswordPressed != null);
    assert(currentPasswordChanged != null);
    assert(newPasswordChanged != null);
    assert(retypedNewPasswordChanged != null);
    return currentPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changePasswordPressed(_ChangePasswordPressed value),
    TResult currentPasswordChanged(_CurrentPasswordChanged value),
    TResult newPasswordChanged(_NewPasswordChanged value),
    TResult retypedNewPasswordChanged(_RetypedNewPasswordChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (currentPasswordChanged != null) {
      return currentPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _CurrentPasswordChanged implements ChangePasswordEvent {
  const factory _CurrentPasswordChanged(String passwordStr) =
      _$_CurrentPasswordChanged;

  String get passwordStr;
  @JsonKey(ignore: true)
  _$CurrentPasswordChangedCopyWith<_CurrentPasswordChanged> get copyWith;
}

/// @nodoc
abstract class _$NewPasswordChangedCopyWith<$Res> {
  factory _$NewPasswordChangedCopyWith(
          _NewPasswordChanged value, $Res Function(_NewPasswordChanged) then) =
      __$NewPasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class __$NewPasswordChangedCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements _$NewPasswordChangedCopyWith<$Res> {
  __$NewPasswordChangedCopyWithImpl(
      _NewPasswordChanged _value, $Res Function(_NewPasswordChanged) _then)
      : super(_value, (v) => _then(v as _NewPasswordChanged));

  @override
  _NewPasswordChanged get _value => super._value as _NewPasswordChanged;

  @override
  $Res call({
    Object passwordStr = freezed,
  }) {
    return _then(_NewPasswordChanged(
      passwordStr == freezed ? _value.passwordStr : passwordStr as String,
    ));
  }
}

/// @nodoc
class _$_NewPasswordChanged
    with DiagnosticableTreeMixin
    implements _NewPasswordChanged {
  const _$_NewPasswordChanged(this.passwordStr) : assert(passwordStr != null);

  @override
  final String passwordStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChangePasswordEvent.newPasswordChanged(passwordStr: $passwordStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'ChangePasswordEvent.newPasswordChanged'))
      ..add(DiagnosticsProperty('passwordStr', passwordStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewPasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @JsonKey(ignore: true)
  @override
  _$NewPasswordChangedCopyWith<_NewPasswordChanged> get copyWith =>
      __$NewPasswordChangedCopyWithImpl<_NewPasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changePasswordPressed(),
    @required TResult currentPasswordChanged(String passwordStr),
    @required TResult newPasswordChanged(String passwordStr),
    @required TResult retypedNewPasswordChanged(String passwordStr),
  }) {
    assert(changePasswordPressed != null);
    assert(currentPasswordChanged != null);
    assert(newPasswordChanged != null);
    assert(retypedNewPasswordChanged != null);
    return newPasswordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changePasswordPressed(),
    TResult currentPasswordChanged(String passwordStr),
    TResult newPasswordChanged(String passwordStr),
    TResult retypedNewPasswordChanged(String passwordStr),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (newPasswordChanged != null) {
      return newPasswordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changePasswordPressed(_ChangePasswordPressed value),
    @required TResult currentPasswordChanged(_CurrentPasswordChanged value),
    @required TResult newPasswordChanged(_NewPasswordChanged value),
    @required
        TResult retypedNewPasswordChanged(_RetypedNewPasswordChanged value),
  }) {
    assert(changePasswordPressed != null);
    assert(currentPasswordChanged != null);
    assert(newPasswordChanged != null);
    assert(retypedNewPasswordChanged != null);
    return newPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changePasswordPressed(_ChangePasswordPressed value),
    TResult currentPasswordChanged(_CurrentPasswordChanged value),
    TResult newPasswordChanged(_NewPasswordChanged value),
    TResult retypedNewPasswordChanged(_RetypedNewPasswordChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (newPasswordChanged != null) {
      return newPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _NewPasswordChanged implements ChangePasswordEvent {
  const factory _NewPasswordChanged(String passwordStr) = _$_NewPasswordChanged;

  String get passwordStr;
  @JsonKey(ignore: true)
  _$NewPasswordChangedCopyWith<_NewPasswordChanged> get copyWith;
}

/// @nodoc
abstract class _$RetypedNewPasswordChangedCopyWith<$Res> {
  factory _$RetypedNewPasswordChangedCopyWith(_RetypedNewPasswordChanged value,
          $Res Function(_RetypedNewPasswordChanged) then) =
      __$RetypedNewPasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class __$RetypedNewPasswordChangedCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements _$RetypedNewPasswordChangedCopyWith<$Res> {
  __$RetypedNewPasswordChangedCopyWithImpl(_RetypedNewPasswordChanged _value,
      $Res Function(_RetypedNewPasswordChanged) _then)
      : super(_value, (v) => _then(v as _RetypedNewPasswordChanged));

  @override
  _RetypedNewPasswordChanged get _value =>
      super._value as _RetypedNewPasswordChanged;

  @override
  $Res call({
    Object passwordStr = freezed,
  }) {
    return _then(_RetypedNewPasswordChanged(
      passwordStr == freezed ? _value.passwordStr : passwordStr as String,
    ));
  }
}

/// @nodoc
class _$_RetypedNewPasswordChanged
    with DiagnosticableTreeMixin
    implements _RetypedNewPasswordChanged {
  const _$_RetypedNewPasswordChanged(this.passwordStr)
      : assert(passwordStr != null);

  @override
  final String passwordStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChangePasswordEvent.retypedNewPasswordChanged(passwordStr: $passwordStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ChangePasswordEvent.retypedNewPasswordChanged'))
      ..add(DiagnosticsProperty('passwordStr', passwordStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RetypedNewPasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @JsonKey(ignore: true)
  @override
  _$RetypedNewPasswordChangedCopyWith<_RetypedNewPasswordChanged>
      get copyWith =>
          __$RetypedNewPasswordChangedCopyWithImpl<_RetypedNewPasswordChanged>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changePasswordPressed(),
    @required TResult currentPasswordChanged(String passwordStr),
    @required TResult newPasswordChanged(String passwordStr),
    @required TResult retypedNewPasswordChanged(String passwordStr),
  }) {
    assert(changePasswordPressed != null);
    assert(currentPasswordChanged != null);
    assert(newPasswordChanged != null);
    assert(retypedNewPasswordChanged != null);
    return retypedNewPasswordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changePasswordPressed(),
    TResult currentPasswordChanged(String passwordStr),
    TResult newPasswordChanged(String passwordStr),
    TResult retypedNewPasswordChanged(String passwordStr),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (retypedNewPasswordChanged != null) {
      return retypedNewPasswordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changePasswordPressed(_ChangePasswordPressed value),
    @required TResult currentPasswordChanged(_CurrentPasswordChanged value),
    @required TResult newPasswordChanged(_NewPasswordChanged value),
    @required
        TResult retypedNewPasswordChanged(_RetypedNewPasswordChanged value),
  }) {
    assert(changePasswordPressed != null);
    assert(currentPasswordChanged != null);
    assert(newPasswordChanged != null);
    assert(retypedNewPasswordChanged != null);
    return retypedNewPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changePasswordPressed(_ChangePasswordPressed value),
    TResult currentPasswordChanged(_CurrentPasswordChanged value),
    TResult newPasswordChanged(_NewPasswordChanged value),
    TResult retypedNewPasswordChanged(_RetypedNewPasswordChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (retypedNewPasswordChanged != null) {
      return retypedNewPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _RetypedNewPasswordChanged implements ChangePasswordEvent {
  const factory _RetypedNewPasswordChanged(String passwordStr) =
      _$_RetypedNewPasswordChanged;

  String get passwordStr;
  @JsonKey(ignore: true)
  _$RetypedNewPasswordChangedCopyWith<_RetypedNewPasswordChanged> get copyWith;
}

/// @nodoc
class _$ChangePasswordStateTearOff {
  const _$ChangePasswordStateTearOff();

// ignore: unused_element
  _ChangePasswordState call(
      {@required Password currentPassword,
      @required Password newPassword,
      @required Password retypedNewPassword,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<Failure, Unit>> failureOrSuccessOption}) {
    return _ChangePasswordState(
      currentPassword: currentPassword,
      newPassword: newPassword,
      retypedNewPassword: retypedNewPassword,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ChangePasswordState = _$ChangePasswordStateTearOff();

/// @nodoc
mixin _$ChangePasswordState {
  Password get currentPassword;
  Password get newPassword;
  Password get retypedNewPassword;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<Failure, Unit>> get failureOrSuccessOption;

  @JsonKey(ignore: true)
  $ChangePasswordStateCopyWith<ChangePasswordState> get copyWith;
}

/// @nodoc
abstract class $ChangePasswordStateCopyWith<$Res> {
  factory $ChangePasswordStateCopyWith(
          ChangePasswordState value, $Res Function(ChangePasswordState) then) =
      _$ChangePasswordStateCopyWithImpl<$Res>;
  $Res call(
      {Password currentPassword,
      Password newPassword,
      Password retypedNewPassword,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<Failure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class _$ChangePasswordStateCopyWithImpl<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  _$ChangePasswordStateCopyWithImpl(this._value, this._then);

  final ChangePasswordState _value;
  // ignore: unused_field
  final $Res Function(ChangePasswordState) _then;

  @override
  $Res call({
    Object currentPassword = freezed,
    Object newPassword = freezed,
    Object retypedNewPassword = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      currentPassword: currentPassword == freezed
          ? _value.currentPassword
          : currentPassword as Password,
      newPassword:
          newPassword == freezed ? _value.newPassword : newPassword as Password,
      retypedNewPassword: retypedNewPassword == freezed
          ? _value.retypedNewPassword
          : retypedNewPassword as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$ChangePasswordStateCopyWith<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  factory _$ChangePasswordStateCopyWith(_ChangePasswordState value,
          $Res Function(_ChangePasswordState) then) =
      __$ChangePasswordStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Password currentPassword,
      Password newPassword,
      Password retypedNewPassword,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<Failure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class __$ChangePasswordStateCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res>
    implements _$ChangePasswordStateCopyWith<$Res> {
  __$ChangePasswordStateCopyWithImpl(
      _ChangePasswordState _value, $Res Function(_ChangePasswordState) _then)
      : super(_value, (v) => _then(v as _ChangePasswordState));

  @override
  _ChangePasswordState get _value => super._value as _ChangePasswordState;

  @override
  $Res call({
    Object currentPassword = freezed,
    Object newPassword = freezed,
    Object retypedNewPassword = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_ChangePasswordState(
      currentPassword: currentPassword == freezed
          ? _value.currentPassword
          : currentPassword as Password,
      newPassword:
          newPassword == freezed ? _value.newPassword : newPassword as Password,
      retypedNewPassword: retypedNewPassword == freezed
          ? _value.retypedNewPassword
          : retypedNewPassword as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_ChangePasswordState
    with DiagnosticableTreeMixin
    implements _ChangePasswordState {
  const _$_ChangePasswordState(
      {@required this.currentPassword,
      @required this.newPassword,
      @required this.retypedNewPassword,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.failureOrSuccessOption})
      : assert(currentPassword != null),
        assert(newPassword != null),
        assert(retypedNewPassword != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(failureOrSuccessOption != null);

  @override
  final Password currentPassword;
  @override
  final Password newPassword;
  @override
  final Password retypedNewPassword;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<Failure, Unit>> failureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChangePasswordState(currentPassword: $currentPassword, newPassword: $newPassword, retypedNewPassword: $retypedNewPassword, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChangePasswordState'))
      ..add(DiagnosticsProperty('currentPassword', currentPassword))
      ..add(DiagnosticsProperty('newPassword', newPassword))
      ..add(DiagnosticsProperty('retypedNewPassword', retypedNewPassword))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty(
          'failureOrSuccessOption', failureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangePasswordState &&
            (identical(other.currentPassword, currentPassword) ||
                const DeepCollectionEquality()
                    .equals(other.currentPassword, currentPassword)) &&
            (identical(other.newPassword, newPassword) ||
                const DeepCollectionEquality()
                    .equals(other.newPassword, newPassword)) &&
            (identical(other.retypedNewPassword, retypedNewPassword) ||
                const DeepCollectionEquality()
                    .equals(other.retypedNewPassword, retypedNewPassword)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.failureOrSuccessOption, failureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentPassword) ^
      const DeepCollectionEquality().hash(newPassword) ^
      const DeepCollectionEquality().hash(retypedNewPassword) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$ChangePasswordStateCopyWith<_ChangePasswordState> get copyWith =>
      __$ChangePasswordStateCopyWithImpl<_ChangePasswordState>(
          this, _$identity);
}

abstract class _ChangePasswordState implements ChangePasswordState {
  const factory _ChangePasswordState(
          {@required Password currentPassword,
          @required Password newPassword,
          @required Password retypedNewPassword,
          @required bool showErrorMessages,
          @required bool isSubmitting,
          @required Option<Either<Failure, Unit>> failureOrSuccessOption}) =
      _$_ChangePasswordState;

  @override
  Password get currentPassword;
  @override
  Password get newPassword;
  @override
  Password get retypedNewPassword;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<Failure, Unit>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$ChangePasswordStateCopyWith<_ChangePasswordState> get copyWith;
}
