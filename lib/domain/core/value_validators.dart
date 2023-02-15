import 'package:dartz/dartz.dart';

import 'invalid_value_failure.dart';

Either<InvalidValueFailure, String> validateEmailAddress(String input) {
  if (input.isEmpty) {
    return left(InvalidValueFailure(message: 'Email address cannot be empty.'));
  }

  const emailRegex =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

  if (RegExp(emailRegex).hasMatch(input)) return right(input);

  return left(InvalidValueFailure(message: 'Invalid email address.'));
  ;
}

Either<InvalidValueFailure, String> validatePassword(String input) {
  if (input.isNotEmpty) return right(input);

  return left(InvalidValueFailure(message: 'Password cannot be empty.'));
}
