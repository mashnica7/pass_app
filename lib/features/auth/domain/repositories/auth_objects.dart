import 'package:dartz/dartz.dart';

import '../../../../core/value_objects/value_failures.dart';
import '../../../../core/value_objects/value_object.dart';
import '../../../../core/value_objects/value_validators.dart';

class Email extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Email(String input) {
    assert(input != null);
    return Email._(
      validateEmail(input),
    );
  }

  const Email._(this.value);

  @override
  String stringValue() {
    return value.getOrElse(() => null);
  }
}

class Phone extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Phone(String input) {
    assert(input != null);
    return Phone._(
      validatePhoneNumber(input),
    );
  }

  const Phone._(this.value);

  @override
  String stringValue() {
    return value.getOrElse(() => null);
  }
}

class PlainText extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  @override
  String stringValue() {
    return value.getOrElse(() => null);
  }

  // ignore: avoid_positional_boolean_parameters
  factory PlainText(String input, {int maxLength, bool noValidation}) {
    assert(input != null);
    if (noValidation == true) {
      return PlainText._(right(input));
    }
    final Either<ValueFailure<String>, String> eitherFailureOrString =
        validateStringNotEmpty(input);

    if (eitherFailureOrString.isRight() && maxLength != null) {
      return PlainText._(validateStringLength(input, maxLength));
    }

    return PlainText._(eitherFailureOrString);
  }

  const PlainText._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input,
      {Password differentThenPass, Password equalAsPass}) {
    assert(input != null);
    return Password._(validateStringNotEmpty(input).flatMap((a) {
      Either<ValueFailure<String>, String> eitherFailureOrString = right(a);
      if (differentThenPass != null && differentThenPass.isValid()) {
        eitherFailureOrString =
            validateDifferenceStrings(input, differentThenPass.getOrCrash());
      }
      if (equalAsPass != null && equalAsPass.isValid()) {
        eitherFailureOrString =
            validateEqualStrings(input, equalAsPass.getOrCrash());
      }
      return eitherFailureOrString;
    }));
  }

  factory Password.defferentThan(String input, String password2) {
    assert(input != null && password2 != null);
    return Password._(validateDifferenceStrings(input, password2));
  }

  factory Password.equalAs(String input, String password2) {
    assert(input != null && password2 != null);
    return Password._(validateEqualStrings(input, password2));
  }

  const Password._(this.value);
}
