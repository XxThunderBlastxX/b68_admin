import 'package:logger/logger.dart';

class Log {
  Log._();

  static final instance = Log._();

  final Logger _logger = Logger(printer: PrettyPrinter(printTime: true));

  void e(String message, {int? statusCode}) =>
      _logger.e("Error Code : $statusCode \nError : $message");

  void d(String message) => _logger.d(message);

  void i(String message) => _logger.i(message);

  void w(String message) => _logger.w(message);

  void v(String message) => _logger.v(message);

  void wtf(String message) => _logger.wtf(message);
}
