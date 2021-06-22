import 'package:dartz/dartz.dart';

import 'value_failures.dart';

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateEmail(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  } else if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePhoneNumber(String input) {
  const phoneRegex =
      r"""^(?=[+]{1}[0-9]{3} [0-9]{2} [0-9]{3} [0-9]{2} [0-9]{2}).*$""";

  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  } else if (RegExp(phoneRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPhoneNumber(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateStringLength(
    String input, int length) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  } else if (input.length < length) {
    return right(input);
  } else {
    return left(ValueFailure.invalidLength(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateDifferenceStrings(
    String string1, String string2) {
  if (string1.isEmpty || string2.isEmpty) {
    return left(ValueFailure.empty(failedValue: string1));
  }

  if (string1 == string2) {
    return left(
        ValueFailure.equalAs(failedValue: string1, comparedVaule: string2));
  }
  return right(string1);
}

Either<ValueFailure<String>, String> validateEqualStrings(
    String string1, String string2) {
  if (string1.isEmpty || string2.isEmpty) {
    return left(ValueFailure.empty(failedValue: string1));
  }

  if (string1 != string2) {
    return left(ValueFailure.differentThan(
        failedValue: string1, comparedVaule: string2));
  }
  return right(string1);
}
