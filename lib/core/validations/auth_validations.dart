class AuthValidation {
  static String? nameValidation(String value) {
    if (value.length < 2) {
      return 'أدخل على الأقل حرفان';
    }
    return null;
  }

  static String? phoneNumberValidation(String value) {
    if (value.length != 10) {
      return 'أدخل 10 أرقام';
    }
    return null;
  }

  static String? emailValidation(String value) {
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value))
    {
      return 'أدخل بريد إلكتروني صحيح';
    }
    return null;
  }

  static bool lowerCaseValidator(String value) {
    return RegExp(r'(?=.*[a-z])').hasMatch(value);
  }

  static bool upperCaseValidator(String value) {
    return RegExp(r'(?=.*[A-Z])').hasMatch(value);
  }

  static bool numberValidator(String value) {
    return RegExp(r'(?=.*[0-9])').hasMatch(value);
  }

  static bool specialCharacterValidator(String value) {
    return RegExp(r"[.\*/\-_=!@#\$%\^&\*\(\)\|\,]").hasMatch(value);
  }

  static bool isPasswordValidRegister(String value) {
    return (lowerCaseValidator(value) &&
        upperCaseValidator(value) &&
        numberValidator(value) &&
        specialCharacterValidator(value));
  }

  static String? isPasswordValidLogin(String value) {
    if (lowerCaseValidator(value) &&
        upperCaseValidator(value) &&
        numberValidator(value) &&
        specialCharacterValidator(value)) {
      return null;
    }
    return 'كلمة المرور غير صحيحة';
  }

  static String? birthdayValidation(String value) {
    if (value.isEmpty) {
      return 'مطلوب';
    }
    return null;
  }
}
