import 'package:dartz/dartz.dart';
import 'package:flutter_boilerplate/domain/core/invalid_value_failure.dart';

import '../core/value_object.dart';
import '../core/value_validators.dart';

class EmailAddress extends ValueObject {
  @override
  final Either<InvalidValueFailure, String> value;

  const EmailAddress._(this.value);

  factory EmailAddress(String input) {
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }
}

class Password extends ValueObject {
  @override
  final Either<InvalidValueFailure, String> value;

  const Password._(this.value);

  factory Password(String input) {
    return Password._(
      validatePassword(input),
    );
  }
}
