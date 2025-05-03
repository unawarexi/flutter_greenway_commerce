class TValidationHelper {
  // Validate email address
  static String? validateEmail(String email) {
    const String emailPattern =
        r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    final RegExp emailRegex = RegExp(emailPattern);

    if (email.isEmpty) {
      return 'Email cannot be empty.';
    } else if (!emailRegex.hasMatch(email)) {
      return 'Please enter a valid email address.';
    }
    return null; // Valid email
  }

  // Validate phone number
  static String? validatePhoneNumber(String phoneNumber) {
    const String phonePattern =
        r'^\+?[0-9]{10,15}$'; // Example pattern for international format
    final RegExp phoneRegex = RegExp(phonePattern);

    if (phoneNumber.isEmpty) {
      return 'Phone number cannot be empty.';
    } else if (!phoneRegex.hasMatch(phoneNumber)) {
      return 'Please enter a valid phone number.';
    }
    return null; // Valid phone number
  }

  // Validate password
  static String? validatePassword(String password) {
    if (password.isEmpty) {
      return 'Password cannot be empty.';
    } else if (password.length < 8) {
      return 'Password must be at least 8 characters long.';
    } else if (!RegExp(r'[A-Z]').hasMatch(password)) {
      return 'Password must contain at least one uppercase letter.';
    } else if (!RegExp(r'[a-z]').hasMatch(password)) {
      return 'Password must contain at least one lowercase letter.';
    } else if (!RegExp(r'[0-9]').hasMatch(password)) {
      return 'Password must contain at least one number.';
    } else if (!RegExp(r'[@$!%*?&]').hasMatch(password)) {
      return 'Password must contain at least one special character.';
    }
    return null; // Valid password
  }
}
