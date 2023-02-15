import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import 'invalid_value_failure.dart';
import 'unexpected_value_error.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<InvalidValueFailure, T> get value;

  T getOrCrash() {
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  T getOrElse(T dflt) {
    return value.getOrElse(() => dflt);
  }

  String? getFailureMessage() {
    return value.fold((l) => l.message, (r) => null);
  }

  bool isValid() {
    return value.isRight();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
