// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_intl.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get app_name => 'Flutter Labs';

  @override
  String get animation_label => 'Animations';

  @override
  String get localization_label => 'Localization';

  @override
  String get localization_description => 'Your investment portfolio';

  @override
  String company_shares_total(int value) {
    final intl.NumberFormat valueNumberFormat = intl.NumberFormat.decimalPattern(localeName);
    final String valueString = valueNumberFormat.format(value);

    return 'Shares: $valueString';
  }

  @override
  String company_shares_value(double value) {
    final intl.NumberFormat valueNumberFormat = intl.NumberFormat.currency(
      locale: localeName,
      decimalDigits: 2
    );
    final String valueString = valueNumberFormat.format(value);

    return 'Balance: $valueString';
  }

  @override
  String last_update(DateTime date) {
    final intl.DateFormat dateDateFormat = intl.DateFormat.yMd(localeName);
    final String dateString = dateDateFormat.format(date);

    return 'Last update: $dateString';
  }
}
