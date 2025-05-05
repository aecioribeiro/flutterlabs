// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_intl.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get app_name => 'مختبرات Flutter';

  @override
  String get animation_label => 'رسوم متحركة';

  @override
  String get localization_label => 'التوطين';

  @override
  String get localization_description => 'محفظتك الاستثمارية';

  @override
  String company_shares_total(int value) {
    final intl.NumberFormat valueNumberFormat = intl.NumberFormat.decimalPattern(localeName);
    final String valueString = valueNumberFormat.format(value);

    return 'الأسهم: $valueString';
  }

  @override
  String company_shares_value(double value) {
    final intl.NumberFormat valueNumberFormat = intl.NumberFormat.currency(
      locale: localeName,
      decimalDigits: 2
    );
    final String valueString = valueNumberFormat.format(value);

    return 'الرصيد: $valueString';
  }

  @override
  String last_update(DateTime date) {
    final intl.DateFormat dateDateFormat = intl.DateFormat.yMd(localeName);
    final String dateString = dateDateFormat.format(date);

    return 'آخر تحديث: $dateString';
  }
}
