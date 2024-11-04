import 'package:logger/logger.dart';

class LoggerHelper {
  // Create a singleton instance of LoggerHelper
  static final LoggerHelper _instance = LoggerHelper._internal();

  factory LoggerHelper() {
    return _instance;
  }

  LoggerHelper._internal();

  // Logger instance with PrettyPrinter for structured logging
  final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 2, // Number of method calls to be displayed
      errorMethodCount: 8, // Number of method calls if an error occurs
      lineLength: 120, // Width of the output
      colors: true, // Colorful log messages
      printEmojis: true, // Include emojis in logs
      printTime: true, // Include time in logs
    ),
  );

  // Debug level logging
  void debug(String message) {
    _logger.d(message);
  }

  // Info level logging
  void info(String message) {
    _logger.i(message);
  }

  // Warning level logging
  void warning(String message) {
    _logger.w(message);
  }

  // Error level logging with optional exception and stacktrace
  void error(String message, [Exception? e, StackTrace? stackTrace]) {
    _logger.e(message, error: e, stackTrace: stackTrace);
  }

  // Verbose level logging (useful for detailed logs)
  void verbose(String message) {
    _logger.t(message);
  }

  // Log a fatal error (useful for severe crashes)
  void fatal(String message, [Exception? e, StackTrace? stackTrace]) {
    _logger.f(message, error: e, stackTrace: stackTrace);
  }
}
