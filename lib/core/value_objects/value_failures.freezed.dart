// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'value_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

// ignore: unused_element
  Empty<T> empty<T>({@required T failedValue}) {
    return Empty<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  InvalidEmail<T> invalidEmail<T>({@required T failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  InvalidPhoneNumber<T> invalidPhoneNumber<T>({@required T failedValue}) {
    return InvalidPhoneNumber<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  InvalidLength<T> invalidLength<T>({@required T failedValue}) {
    return InvalidLength<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  EqualAs<T> equalAs<T>({@required T failedValue, T comparedVaule}) {
    return EqualAs<T>(
      failedValue: failedValue,
      comparedVaule: comparedVaule,
    );
  }

// ignore: unused_element
  DifferentThan<T> differentThan<T>(
      {@required T failedValue, T comparedVaule}) {
    return DifferentThan<T>(
      failedValue: failedValue,
      comparedVaule: comparedVaule,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult empty(T failedValue),
    @required TResult invalidEmail(T failedValue),
    @required TResult invalidPhoneNumber(T failedValue),
    @required TResult invalidLength(T failedValue),
    @required TResult equalAs(T failedValue, T comparedVaule),
    @required TResult differentThan(T failedValue, T comparedVaule),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(T failedValue),
    TResult invalidEmail(T failedValue),
    TResult invalidPhoneNumber(T failedValue),
    TResult invalidLength(T failedValue),
    TResult equalAs(T failedValue, T comparedVaule),
    TResult differentThan(T failedValue, T comparedVaule),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult empty(Empty<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    @required TResult invalidLength(InvalidLength<T> value),
    @required TResult equalAs(EqualAs<T> value),
    @required TResult differentThan(DifferentThan<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(Empty<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    TResult invalidLength(InvalidLength<T> value),
    TResult equalAs(EqualAs<T> value),
    TResult differentThan(DifferentThan<T> value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
abstract class $EmptyCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(Empty<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$Empty<T> implements Empty<T> {
  const _$Empty({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Empty<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      _$EmptyCopyWithImpl<T, Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult empty(T failedValue),
    @required TResult invalidEmail(T failedValue),
    @required TResult invalidPhoneNumber(T failedValue),
    @required TResult invalidLength(T failedValue),
    @required TResult equalAs(T failedValue, T comparedVaule),
    @required TResult differentThan(T failedValue, T comparedVaule),
  }) {
    assert(empty != null);
    assert(invalidEmail != null);
    assert(invalidPhoneNumber != null);
    assert(invalidLength != null);
    assert(equalAs != null);
    assert(differentThan != null);
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(T failedValue),
    TResult invalidEmail(T failedValue),
    TResult invalidPhoneNumber(T failedValue),
    TResult invalidLength(T failedValue),
    TResult equalAs(T failedValue, T comparedVaule),
    TResult differentThan(T failedValue, T comparedVaule),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult empty(Empty<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    @required TResult invalidLength(InvalidLength<T> value),
    @required TResult equalAs(EqualAs<T> value),
    @required TResult differentThan(DifferentThan<T> value),
  }) {
    assert(empty != null);
    assert(invalidEmail != null);
    assert(invalidPhoneNumber != null);
    assert(invalidLength != null);
    assert(equalAs != null);
    assert(differentThan != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(Empty<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    TResult invalidLength(InvalidLength<T> value),
    TResult equalAs(EqualAs<T> value),
    TResult differentThan(DifferentThan<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({@required T failedValue}) = _$Empty<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $EmptyCopyWith<T, Empty<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult empty(T failedValue),
    @required TResult invalidEmail(T failedValue),
    @required TResult invalidPhoneNumber(T failedValue),
    @required TResult invalidLength(T failedValue),
    @required TResult equalAs(T failedValue, T comparedVaule),
    @required TResult differentThan(T failedValue, T comparedVaule),
  }) {
    assert(empty != null);
    assert(invalidEmail != null);
    assert(invalidPhoneNumber != null);
    assert(invalidLength != null);
    assert(equalAs != null);
    assert(differentThan != null);
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(T failedValue),
    TResult invalidEmail(T failedValue),
    TResult invalidPhoneNumber(T failedValue),
    TResult invalidLength(T failedValue),
    TResult equalAs(T failedValue, T comparedVaule),
    TResult differentThan(T failedValue, T comparedVaule),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult empty(Empty<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    @required TResult invalidLength(InvalidLength<T> value),
    @required TResult equalAs(EqualAs<T> value),
    @required TResult differentThan(DifferentThan<T> value),
  }) {
    assert(empty != null);
    assert(invalidEmail != null);
    assert(invalidPhoneNumber != null);
    assert(invalidLength != null);
    assert(equalAs != null);
    assert(differentThan != null);
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(Empty<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    TResult invalidLength(InvalidLength<T> value),
    TResult equalAs(EqualAs<T> value),
    TResult differentThan(DifferentThan<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({@required T failedValue}) = _$InvalidEmail<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidPhoneNumberCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidPhoneNumberCopyWith(InvalidPhoneNumber<T> value,
          $Res Function(InvalidPhoneNumber<T>) then) =
      _$InvalidPhoneNumberCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidPhoneNumberCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidPhoneNumberCopyWith<T, $Res> {
  _$InvalidPhoneNumberCopyWithImpl(
      InvalidPhoneNumber<T> _value, $Res Function(InvalidPhoneNumber<T>) _then)
      : super(_value, (v) => _then(v as InvalidPhoneNumber<T>));

  @override
  InvalidPhoneNumber<T> get _value => super._value as InvalidPhoneNumber<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidPhoneNumber<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$InvalidPhoneNumber<T> implements InvalidPhoneNumber<T> {
  const _$InvalidPhoneNumber({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPhoneNumber(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidPhoneNumber<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidPhoneNumberCopyWith<T, InvalidPhoneNumber<T>> get copyWith =>
      _$InvalidPhoneNumberCopyWithImpl<T, InvalidPhoneNumber<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult empty(T failedValue),
    @required TResult invalidEmail(T failedValue),
    @required TResult invalidPhoneNumber(T failedValue),
    @required TResult invalidLength(T failedValue),
    @required TResult equalAs(T failedValue, T comparedVaule),
    @required TResult differentThan(T failedValue, T comparedVaule),
  }) {
    assert(empty != null);
    assert(invalidEmail != null);
    assert(invalidPhoneNumber != null);
    assert(invalidLength != null);
    assert(equalAs != null);
    assert(differentThan != null);
    return invalidPhoneNumber(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(T failedValue),
    TResult invalidEmail(T failedValue),
    TResult invalidPhoneNumber(T failedValue),
    TResult invalidLength(T failedValue),
    TResult equalAs(T failedValue, T comparedVaule),
    TResult differentThan(T failedValue, T comparedVaule),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult empty(Empty<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    @required TResult invalidLength(InvalidLength<T> value),
    @required TResult equalAs(EqualAs<T> value),
    @required TResult differentThan(DifferentThan<T> value),
  }) {
    assert(empty != null);
    assert(invalidEmail != null);
    assert(invalidPhoneNumber != null);
    assert(invalidLength != null);
    assert(equalAs != null);
    assert(differentThan != null);
    return invalidPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(Empty<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    TResult invalidLength(InvalidLength<T> value),
    TResult equalAs(EqualAs<T> value),
    TResult differentThan(DifferentThan<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class InvalidPhoneNumber<T> implements ValueFailure<T> {
  const factory InvalidPhoneNumber({@required T failedValue}) =
      _$InvalidPhoneNumber<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $InvalidPhoneNumberCopyWith<T, InvalidPhoneNumber<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidLengthCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidLengthCopyWith(
          InvalidLength<T> value, $Res Function(InvalidLength<T>) then) =
      _$InvalidLengthCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidLengthCopyWith<T, $Res> {
  _$InvalidLengthCopyWithImpl(
      InvalidLength<T> _value, $Res Function(InvalidLength<T>) _then)
      : super(_value, (v) => _then(v as InvalidLength<T>));

  @override
  InvalidLength<T> get _value => super._value as InvalidLength<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidLength<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$InvalidLength<T> implements InvalidLength<T> {
  const _$InvalidLength({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidLength(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidLengthCopyWith<T, InvalidLength<T>> get copyWith =>
      _$InvalidLengthCopyWithImpl<T, InvalidLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult empty(T failedValue),
    @required TResult invalidEmail(T failedValue),
    @required TResult invalidPhoneNumber(T failedValue),
    @required TResult invalidLength(T failedValue),
    @required TResult equalAs(T failedValue, T comparedVaule),
    @required TResult differentThan(T failedValue, T comparedVaule),
  }) {
    assert(empty != null);
    assert(invalidEmail != null);
    assert(invalidPhoneNumber != null);
    assert(invalidLength != null);
    assert(equalAs != null);
    assert(differentThan != null);
    return invalidLength(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(T failedValue),
    TResult invalidEmail(T failedValue),
    TResult invalidPhoneNumber(T failedValue),
    TResult invalidLength(T failedValue),
    TResult equalAs(T failedValue, T comparedVaule),
    TResult differentThan(T failedValue, T comparedVaule),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidLength != null) {
      return invalidLength(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult empty(Empty<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    @required TResult invalidLength(InvalidLength<T> value),
    @required TResult equalAs(EqualAs<T> value),
    @required TResult differentThan(DifferentThan<T> value),
  }) {
    assert(empty != null);
    assert(invalidEmail != null);
    assert(invalidPhoneNumber != null);
    assert(invalidLength != null);
    assert(equalAs != null);
    assert(differentThan != null);
    return invalidLength(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(Empty<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    TResult invalidLength(InvalidLength<T> value),
    TResult equalAs(EqualAs<T> value),
    TResult differentThan(DifferentThan<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidLength != null) {
      return invalidLength(this);
    }
    return orElse();
  }
}

abstract class InvalidLength<T> implements ValueFailure<T> {
  const factory InvalidLength({@required T failedValue}) = _$InvalidLength<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $InvalidLengthCopyWith<T, InvalidLength<T>> get copyWith;
}

/// @nodoc
abstract class $EqualAsCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $EqualAsCopyWith(EqualAs<T> value, $Res Function(EqualAs<T>) then) =
      _$EqualAsCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, T comparedVaule});
}

/// @nodoc
class _$EqualAsCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EqualAsCopyWith<T, $Res> {
  _$EqualAsCopyWithImpl(EqualAs<T> _value, $Res Function(EqualAs<T>) _then)
      : super(_value, (v) => _then(v as EqualAs<T>));

  @override
  EqualAs<T> get _value => super._value as EqualAs<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object comparedVaule = freezed,
  }) {
    return _then(EqualAs<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      comparedVaule:
          comparedVaule == freezed ? _value.comparedVaule : comparedVaule as T,
    ));
  }
}

/// @nodoc
class _$EqualAs<T> implements EqualAs<T> {
  const _$EqualAs({@required this.failedValue, this.comparedVaule})
      : assert(failedValue != null);

  @override
  final T failedValue;
  @override
  final T comparedVaule;

  @override
  String toString() {
    return 'ValueFailure<$T>.equalAs(failedValue: $failedValue, comparedVaule: $comparedVaule)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EqualAs<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.comparedVaule, comparedVaule) ||
                const DeepCollectionEquality()
                    .equals(other.comparedVaule, comparedVaule)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(comparedVaule);

  @JsonKey(ignore: true)
  @override
  $EqualAsCopyWith<T, EqualAs<T>> get copyWith =>
      _$EqualAsCopyWithImpl<T, EqualAs<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult empty(T failedValue),
    @required TResult invalidEmail(T failedValue),
    @required TResult invalidPhoneNumber(T failedValue),
    @required TResult invalidLength(T failedValue),
    @required TResult equalAs(T failedValue, T comparedVaule),
    @required TResult differentThan(T failedValue, T comparedVaule),
  }) {
    assert(empty != null);
    assert(invalidEmail != null);
    assert(invalidPhoneNumber != null);
    assert(invalidLength != null);
    assert(equalAs != null);
    assert(differentThan != null);
    return equalAs(failedValue, comparedVaule);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(T failedValue),
    TResult invalidEmail(T failedValue),
    TResult invalidPhoneNumber(T failedValue),
    TResult invalidLength(T failedValue),
    TResult equalAs(T failedValue, T comparedVaule),
    TResult differentThan(T failedValue, T comparedVaule),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (equalAs != null) {
      return equalAs(failedValue, comparedVaule);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult empty(Empty<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    @required TResult invalidLength(InvalidLength<T> value),
    @required TResult equalAs(EqualAs<T> value),
    @required TResult differentThan(DifferentThan<T> value),
  }) {
    assert(empty != null);
    assert(invalidEmail != null);
    assert(invalidPhoneNumber != null);
    assert(invalidLength != null);
    assert(equalAs != null);
    assert(differentThan != null);
    return equalAs(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(Empty<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    TResult invalidLength(InvalidLength<T> value),
    TResult equalAs(EqualAs<T> value),
    TResult differentThan(DifferentThan<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (equalAs != null) {
      return equalAs(this);
    }
    return orElse();
  }
}

abstract class EqualAs<T> implements ValueFailure<T> {
  const factory EqualAs({@required T failedValue, T comparedVaule}) =
      _$EqualAs<T>;

  @override
  T get failedValue;
  T get comparedVaule;
  @override
  @JsonKey(ignore: true)
  $EqualAsCopyWith<T, EqualAs<T>> get copyWith;
}

/// @nodoc
abstract class $DifferentThanCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $DifferentThanCopyWith(
          DifferentThan<T> value, $Res Function(DifferentThan<T>) then) =
      _$DifferentThanCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, T comparedVaule});
}

/// @nodoc
class _$DifferentThanCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $DifferentThanCopyWith<T, $Res> {
  _$DifferentThanCopyWithImpl(
      DifferentThan<T> _value, $Res Function(DifferentThan<T>) _then)
      : super(_value, (v) => _then(v as DifferentThan<T>));

  @override
  DifferentThan<T> get _value => super._value as DifferentThan<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object comparedVaule = freezed,
  }) {
    return _then(DifferentThan<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      comparedVaule:
          comparedVaule == freezed ? _value.comparedVaule : comparedVaule as T,
    ));
  }
}

/// @nodoc
class _$DifferentThan<T> implements DifferentThan<T> {
  const _$DifferentThan({@required this.failedValue, this.comparedVaule})
      : assert(failedValue != null);

  @override
  final T failedValue;
  @override
  final T comparedVaule;

  @override
  String toString() {
    return 'ValueFailure<$T>.differentThan(failedValue: $failedValue, comparedVaule: $comparedVaule)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DifferentThan<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.comparedVaule, comparedVaule) ||
                const DeepCollectionEquality()
                    .equals(other.comparedVaule, comparedVaule)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(comparedVaule);

  @JsonKey(ignore: true)
  @override
  $DifferentThanCopyWith<T, DifferentThan<T>> get copyWith =>
      _$DifferentThanCopyWithImpl<T, DifferentThan<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult empty(T failedValue),
    @required TResult invalidEmail(T failedValue),
    @required TResult invalidPhoneNumber(T failedValue),
    @required TResult invalidLength(T failedValue),
    @required TResult equalAs(T failedValue, T comparedVaule),
    @required TResult differentThan(T failedValue, T comparedVaule),
  }) {
    assert(empty != null);
    assert(invalidEmail != null);
    assert(invalidPhoneNumber != null);
    assert(invalidLength != null);
    assert(equalAs != null);
    assert(differentThan != null);
    return differentThan(failedValue, comparedVaule);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(T failedValue),
    TResult invalidEmail(T failedValue),
    TResult invalidPhoneNumber(T failedValue),
    TResult invalidLength(T failedValue),
    TResult equalAs(T failedValue, T comparedVaule),
    TResult differentThan(T failedValue, T comparedVaule),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (differentThan != null) {
      return differentThan(failedValue, comparedVaule);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult empty(Empty<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    @required TResult invalidLength(InvalidLength<T> value),
    @required TResult equalAs(EqualAs<T> value),
    @required TResult differentThan(DifferentThan<T> value),
  }) {
    assert(empty != null);
    assert(invalidEmail != null);
    assert(invalidPhoneNumber != null);
    assert(invalidLength != null);
    assert(equalAs != null);
    assert(differentThan != null);
    return differentThan(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(Empty<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    TResult invalidLength(InvalidLength<T> value),
    TResult equalAs(EqualAs<T> value),
    TResult differentThan(DifferentThan<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (differentThan != null) {
      return differentThan(this);
    }
    return orElse();
  }
}

abstract class DifferentThan<T> implements ValueFailure<T> {
  const factory DifferentThan({@required T failedValue, T comparedVaule}) =
      _$DifferentThan<T>;

  @override
  T get failedValue;
  T get comparedVaule;
  @override
  @JsonKey(ignore: true)
  $DifferentThanCopyWith<T, DifferentThan<T>> get copyWith;
}
