import 'package:logger/logger.dart';

class InvalidValueFailure {
  final String message;

  InvalidValueFailure({required this.message}) {
    Logger(printer: PrettyPrinter(methodCount: 0)).w(message);
  }
}
