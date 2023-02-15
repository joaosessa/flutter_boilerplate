import 'invalid_value_failure.dart';

class UnexpectedValueError extends Error {
  final InvalidValueFailure invalidValueFailure;

  UnexpectedValueError(this.invalidValueFailure);

  @override
  String toString() {
    const explanation =
        'Encountered a InvalidValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $invalidValueFailure');
  }
}
