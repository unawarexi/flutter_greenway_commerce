import 'package:intl/intl.dart';

// Formatter class with static methods for various types of formatting
class TFormatter {
  TFormatter._(); // Private constructor to prevent instantiation

  // Formatter for Date
  static String formatDate(DateTime dateTime, {String format = 'dd-MM-yy'}) {
    final DateFormat dateFormat = DateFormat(format);
    return dateFormat.format(dateTime);
  }

  // Formatter for Currency
  static String formatCurrency(double amount,
      {String locale = 'en_US', String symbol = '\$'}) {
    final NumberFormat currencyFormat =
        NumberFormat.simpleCurrency(locale: locale, name: symbol);
    return currencyFormat.format(amount);
  }

  // Formatter for Phone Number
  static String formatPhoneNumber(String phoneNumber, {String locale = 'US'}) {
    final phoneNumberFormat = PhoneNumberFormat(locale: locale);
    return phoneNumberFormat.format(phoneNumber);
  }
}

// Helper class for phone number formatting
class PhoneNumberFormat {
  final String locale;

  PhoneNumberFormat({required this.locale});

  // Basic formatting for phone numbers (example for US)
  String format(String phoneNumber) {
    if (locale == 'US') {
      final RegExp phoneRegExp = RegExp(r'(\d{3})(\d{3})(\d{4})');
      return phoneNumber.replaceAllMapped(
          phoneRegExp, (match) => '(${match[1]}) ${match[2]}-${match[3]}');
    }
    // Implement more formats for other locales as needed
    return phoneNumber;
  }
}
