class PostValidations {
  static String? carNameValidation(String value) {
    if (value.isNotEmpty && value.length <= 120) {
      return null;
    }
    return 'أدخل اسم سيارة صحيح';
  }

  static String? carPartTypeValidation(String value) {
    if (value.isNotEmpty && value.length <= 180) {
      return null;
    }
    return 'أدخل نوع قطعة سيارة صحيح';
  }

  static String? carModelValidation(String value) {
    if (value.isNotEmpty && value.length <= 120) {
      return null;
    }
    return 'أدخل موديل سيارة صحيح';
  }

  static String? manufacturingCompanyValidation(String value) {
    if (value.isNotEmpty && value.length <= 120) {
      return null;
    }
    return 'أدخل شركة تصنيع صحيحة';
  }

  static String? carPartQuantityValidation(String value) {
    if (value.isNotEmpty && !value.contains('-') && !value.contains(' ')) {
      int number = int.parse(value);
      if (!number.isNegative && number >= 1 && number <= 1000) {
        return null;
      }
      return 'أدخل كمية من 1 الى 1000';
    }
    return 'أدخل كمية صحيحة';
  }

  static String? manufacturingYearValidation(String value) {
    if (value.isNotEmpty && !value.contains('-') && !value.contains(' ')) {
      int number = int.parse(value);
      if (!number.isNegative &&
          value.length == 4 &&
          number.compareTo(DateTime.now().year + 1).isNegative) {
        return null;
      }
      return 'أدخل سنة تصنيع صحيحة';
    }
    return 'أدخل سنة تصنيع صحيحة';
  }

  static String? carPartPriceValidation(String value) {
    if (value.isNotEmpty && !value.contains('-') && !value.contains(' ')) {
      double number = double.parse(value);
      if (!number.isNegative && number >= 0 && number <= 1000000) {
        return null;
      }
    }
    return 'أدخل سعر صحيح';
  }

  static String? vehicleIdNumberValidation(String value) {
    if (value.length == 17) {
      return null;
    }
    return 'أدخل رقم شاصي مكون من ١٧ خانة';
  }

  static String? engineCapacityValidation(String value) {
    if (value.length >= 3 && value.length <= 15) {
      return null;
    }
    return 'أدخل سعة محرك صحيحة';
  }
}
