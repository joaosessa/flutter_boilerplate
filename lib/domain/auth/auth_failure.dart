import 'package:logger/logger.dart';

class AuthFailure {
  final String message;

  AuthFailure({required this.message}) {
    Logger(printer: PrettyPrinter(methodCount: 0)).w(message);
  }
}

class InvalidEmailAddressAndPasswordCombination extends AuthFailure {
  InvalidEmailAddressAndPasswordCombination({
    super.message = 'Invalid email address and password combination.',
  });
}
