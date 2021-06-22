// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_up_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignUpFormEventTearOff {
  const _$SignUpFormEventTearOff();

// ignore: unused_element
  EmailChanged emailChanged(String emailStr) {
    return EmailChanged(
      emailStr,
    );
  }

// ignore: unused_element
  _PasswordChanged passwordChanged(String passwordStr) {
    return _PasswordChanged(
      passwordStr,
    );
  }

// ignore: unused_element
  _RepytedPasswordChanged repytedPasswordChanged(String repyPasswordStr) {
    return _RepytedPasswordChanged(
      repyPasswordStr,
    );
  }

// ignore: unused_element
  _RegisterUser registerUser() {
    return const _RegisterUser();
  }
}

/// @nodoc
// ignore: unused_element
const $SignUpFormEvent = _$SignUpFormEventTearOff();

/// @nodoc
mixin _$SignUpFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult repytedPasswordChanged(String repyPasswordStr),
    @required TResult registerUser(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult repytedPasswordChanged(String repyPasswordStr),
    TResult registerUser(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult repytedPasswordChanged(_RepytedPasswordChanged value),
    @required TResult registerUser(_RegisterUser value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult repytedPasswordChanged(_RepytedPasswordChanged value),
    TResult registerUser(_RegisterUser value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SignUpFormEventCopyWith<$Res> {
  factory $SignUpFormEventCopyWith(
          SignUpFormEvent value, $Res Function(SignUpFormEvent) then) =
      _$SignUpFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpFormEventCopyWithImpl<$Res>
    implements $SignUpFormEventCopyWith<$Res> {
  _$SignUpFormEventCopyWithImpl(this._value, this._then);

  final SignUpFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignUpFormEvent) _then;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object emailStr = freezed,
  }) {
    return _then(EmailChanged(
      emailStr == freezed ? _value.emailStr : emailStr as String,
    ));
  }
}

/// @nodoc
class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailStr) : assert(emailStr != null);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'SignUpFormEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @JsonKey(ignore: true)
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult repytedPasswordChanged(String repyPasswordStr),
    @required TResult registerUser(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(repytedPasswordChanged != null);
    assert(registerUser != null);
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult repytedPasswordChanged(String repyPasswordStr),
    TResult registerUser(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult repytedPasswordChanged(_RepytedPasswordChanged value),
    @required TResult registerUser(_RegisterUser value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(repytedPasswordChanged != null);
    assert(registerUser != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult repytedPasswordChanged(_RepytedPasswordChanged value),
    TResult registerUser(_RegisterUser value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignUpFormEvent {
  const factory EmailChanged(String emailStr) = _$EmailChanged;

  String get emailStr;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

/// @nodoc
abstract class _$PasswordChangedCopyWith<$Res> {
  factory _$PasswordChangedCopyWith(
          _PasswordChanged value, $Res Function(_PasswordChanged) then) =
      __$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class __$PasswordChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements _$PasswordChangedCopyWith<$Res> {
  __$PasswordChangedCopyWithImpl(
      _PasswordChanged _value, $Res Function(_PasswordChanged) _then)
      : super(_value, (v) => _then(v as _PasswordChanged));

  @override
  _PasswordChanged get _value => super._value as _PasswordChanged;

  @override
  $Res call({
    Object passwordStr = freezed,
  }) {
    return _then(_PasswordChanged(
      passwordStr == freezed ? _value.passwordStr : passwordStr as String,
    ));
  }
}

/// @nodoc
class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.passwordStr) : assert(passwordStr != null);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'SignUpFormEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @JsonKey(ignore: true)
  @override
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      __$PasswordChangedCopyWithImpl<_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult repytedPasswordChanged(String repyPasswordStr),
    @required TResult registerUser(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(repytedPasswordChanged != null);
    assert(registerUser != null);
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult repytedPasswordChanged(String repyPasswordStr),
    TResult registerUser(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult repytedPasswordChanged(_RepytedPasswordChanged value),
    @required TResult registerUser(_RegisterUser value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(repytedPasswordChanged != null);
    assert(registerUser != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult repytedPasswordChanged(_RepytedPasswordChanged value),
    TResult registerUser(_RegisterUser value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements SignUpFormEvent {
  const factory _PasswordChanged(String passwordStr) = _$_PasswordChanged;

  String get passwordStr;
  @JsonKey(ignore: true)
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith;
}

/// @nodoc
abstract class _$RepytedPasswordChangedCopyWith<$Res> {
  factory _$RepytedPasswordChangedCopyWith(_RepytedPasswordChanged value,
          $Res Function(_RepytedPasswordChanged) then) =
      __$RepytedPasswordChangedCopyWithImpl<$Res>;
  $Res call({String repyPasswordStr});
}

/// @nodoc
class __$RepytedPasswordChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements _$RepytedPasswordChangedCopyWith<$Res> {
  __$RepytedPasswordChangedCopyWithImpl(_RepytedPasswordChanged _value,
      $Res Function(_RepytedPasswordChanged) _then)
      : super(_value, (v) => _then(v as _RepytedPasswordChanged));

  @override
  _RepytedPasswordChanged get _value => super._value as _RepytedPasswordChanged;

  @override
  $Res call({
    Object repyPasswordStr = freezed,
  }) {
    return _then(_RepytedPasswordChanged(
      repyPasswordStr == freezed
          ? _value.repyPasswordStr
          : repyPasswordStr as String,
    ));
  }
}

/// @nodoc
class _$_RepytedPasswordChanged implements _RepytedPasswordChanged {
  const _$_RepytedPasswordChanged(this.repyPasswordStr)
      : assert(repyPasswordStr != null);

  @override
  final String repyPasswordStr;

  @override
  String toString() {
    return 'SignUpFormEvent.repytedPasswordChanged(repyPasswordStr: $repyPasswordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RepytedPasswordChanged &&
            (identical(other.repyPasswordStr, repyPasswordStr) ||
                const DeepCollectionEquality()
                    .equals(other.repyPasswordStr, repyPasswordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(repyPasswordStr);

  @JsonKey(ignore: true)
  @override
  _$RepytedPasswordChangedCopyWith<_RepytedPasswordChanged> get copyWith =>
      __$RepytedPasswordChangedCopyWithImpl<_RepytedPasswordChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult repytedPasswordChanged(String repyPasswordStr),
    @required TResult registerUser(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(repytedPasswordChanged != null);
    assert(registerUser != null);
    return repytedPasswordChanged(repyPasswordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult repytedPasswordChanged(String repyPasswordStr),
    TResult registerUser(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (repytedPasswordChanged != null) {
      return repytedPasswordChanged(repyPasswordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult repytedPasswordChanged(_RepytedPasswordChanged value),
    @required TResult registerUser(_RegisterUser value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(repytedPasswordChanged != null);
    assert(registerUser != null);
    return repytedPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult repytedPasswordChanged(_RepytedPasswordChanged value),
    TResult registerUser(_RegisterUser value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (repytedPasswordChanged != null) {
      return repytedPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _RepytedPasswordChanged implements SignUpFormEvent {
  const factory _RepytedPasswordChanged(String repyPasswordStr) =
      _$_RepytedPasswordChanged;

  String get repyPasswordStr;
  @JsonKey(ignore: true)
  _$RepytedPasswordChangedCopyWith<_RepytedPasswordChanged> get copyWith;
}

/// @nodoc
abstract class _$RegisterUserCopyWith<$Res> {
  factory _$RegisterUserCopyWith(
          _RegisterUser value, $Res Function(_RegisterUser) then) =
      __$RegisterUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$RegisterUserCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements _$RegisterUserCopyWith<$Res> {
  __$RegisterUserCopyWithImpl(
      _RegisterUser _value, $Res Function(_RegisterUser) _then)
      : super(_value, (v) => _then(v as _RegisterUser));

  @override
  _RegisterUser get _value => super._value as _RegisterUser;
}

/// @nodoc
class _$_RegisterUser implements _RegisterUser {
  const _$_RegisterUser();

  @override
  String toString() {
    return 'SignUpFormEvent.registerUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RegisterUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult repytedPasswordChanged(String repyPasswordStr),
    @required TResult registerUser(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(repytedPasswordChanged != null);
    assert(registerUser != null);
    return registerUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult repytedPasswordChanged(String repyPasswordStr),
    TResult registerUser(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerUser != null) {
      return registerUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult repytedPasswordChanged(_RepytedPasswordChanged value),
    @required TResult registerUser(_RegisterUser value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(repytedPasswordChanged != null);
    assert(registerUser != null);
    return registerUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult repytedPasswordChanged(_RepytedPasswordChanged value),
    TResult registerUser(_RegisterUser value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerUser != null) {
      return registerUser(this);
    }
    return orElse();
  }
}

abstract class _RegisterUser implements SignUpFormEvent {
  const factory _RegisterUser() = _$_RegisterUser;
}

/// @nodoc
class _$SignUpFormStateTearOff {
  const _$SignUpFormStateTearOff();

// ignore: unused_element
  _SignUpFormState call(
      {@required Email email,
      @required Password password,
      @required Password repytedPassword,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<Failure, Unit>> failureOrSuccessOption}) {
    return _SignUpFormState(
      email: email,
      password: password,
      repytedPassword: repytedPassword,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignUpFormState = _$SignUpFormStateTearOff();

/// @nodoc
mixin _$SignUpFormState {
  Email get email;
  Password get password;
  Password get repytedPassword;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<Failure, Unit>> get failureOrSuccessOption;

  @JsonKey(ignore: true)
  $SignUpFormStateCopyWith<SignUpFormState> get copyWith;
}

/// @nodoc
abstract class $SignUpFormStateCopyWith<$Res> {
  factory $SignUpFormStateCopyWith(
          SignUpFormState value, $Res Function(SignUpFormState) then) =
      _$SignUpFormStateCopyWithImpl<$Res>;
  $Res call(
      {Email email,
      Password password,
      Password repytedPassword,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<Failure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class _$SignUpFormStateCopyWithImpl<$Res>
    implements $SignUpFormStateCopyWith<$Res> {
  _$SignUpFormStateCopyWithImpl(this._value, this._then);

  final SignUpFormState _value;
  // ignore: unused_field
  final $Res Function(SignUpFormState) _then;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object repytedPassword = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as Email,
      password: password == freezed ? _value.password : password as Password,
      repytedPassword: repytedPassword == freezed
          ? _value.repytedPassword
          : repytedPassword as Password,
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
abstract class _$SignUpFormStateCopyWith<$Res>
    implements $SignUpFormStateCopyWith<$Res> {
  factory _$SignUpFormStateCopyWith(
          _SignUpFormState value, $Res Function(_SignUpFormState) then) =
      __$SignUpFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Email email,
      Password password,
      Password repytedPassword,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<Failure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class __$SignUpFormStateCopyWithImpl<$Res>
    extends _$SignUpFormStateCopyWithImpl<$Res>
    implements _$SignUpFormStateCopyWith<$Res> {
  __$SignUpFormStateCopyWithImpl(
      _SignUpFormState _value, $Res Function(_SignUpFormState) _then)
      : super(_value, (v) => _then(v as _SignUpFormState));

  @override
  _SignUpFormState get _value => super._value as _SignUpFormState;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object repytedPassword = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_SignUpFormState(
      email: email == freezed ? _value.email : email as Email,
      password: password == freezed ? _value.password : password as Password,
      repytedPassword: repytedPassword == freezed
          ? _value.repytedPassword
          : repytedPassword as Password,
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
class _$_SignUpFormState implements _SignUpFormState {
  const _$_SignUpFormState(
      {@required this.email,
      @required this.password,
      @required this.repytedPassword,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.failureOrSuccessOption})
      : assert(email != null),
        assert(password != null),
        assert(repytedPassword != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(failureOrSuccessOption != null);

  @override
  final Email email;
  @override
  final Password password;
  @override
  final Password repytedPassword;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<Failure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'SignUpFormState(email: $email, password: $password, repytedPassword: $repytedPassword, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpFormState &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.repytedPassword, repytedPassword) ||
                const DeepCollectionEquality()
                    .equals(other.repytedPassword, repytedPassword)) &&
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
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(repytedPassword) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$SignUpFormStateCopyWith<_SignUpFormState> get copyWith =>
      __$SignUpFormStateCopyWithImpl<_SignUpFormState>(this, _$identity);
}

abstract class _SignUpFormState implements SignUpFormState {
  const factory _SignUpFormState(
          {@required Email email,
          @required Password password,
          @required Password repytedPassword,
          @required bool showErrorMessages,
          @required bool isSubmitting,
          @required Option<Either<Failure, Unit>> failureOrSuccessOption}) =
      _$_SignUpFormState;

  @override
  Email get email;
  @override
  Password get password;
  @override
  Password get repytedPassword;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<Failure, Unit>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$SignUpFormStateCopyWith<_SignUpFormState> get copyWith;
}
