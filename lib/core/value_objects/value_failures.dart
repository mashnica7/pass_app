import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.empty({
    @required T failedValue,
  }) = Empty<T>;

  const factory ValueFailure.invalidEmail({
    @required T failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.invalidPhoneNumber({
    @required T failedValue,
  }) = InvalidPhoneNumber<T>;

  const factory ValueFailure.invalidLength({
    @required T failedValue,
  }) = InvalidLength<T>;

  const factory ValueFailure.equalAs({
    @required T failedValue,
    T comparedVaule,
  }) = EqualAs<T>;

  const factory ValueFailure.differentThan({
    @required T failedValue,
    T comparedVaule,
  }) = DifferentThan<T>;
}
