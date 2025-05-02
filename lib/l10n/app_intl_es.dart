// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_intl.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get app_name => 'Flutter Labs';

  @override
  String get animation_label => 'Animaciones';

  @override
  String get localization_label => 'Localización';

  @override
  String get localization_description => 'Su cartera de inversiones';

  @override
  String company_shares_total(int value) {
    final intl.NumberFormat valueNumberFormat = intl.NumberFormat.decimalPattern(localeName);
    final String valueString = valueNumberFormat.format(value);

    return 'Número de acciones: $valueString';
  }

  @override
  String company_shares_value(double value) {
    final intl.NumberFormat valueNumberFormat = intl.NumberFormat.currency(
      locale: localeName,
      decimalDigits: 2
    );
    final String valueString = valueNumberFormat.format(value);

    return 'Saldo: $valueString';
  }

  @override
  String last_update(DateTime date) {
    final intl.DateFormat dateDateFormat = intl.DateFormat.yMd(localeName);
    final String dateString = dateDateFormat.format(date);

    return 'Última actualización: $dateString';
  }
}

/// The translations for Spanish Castilian, as used in Mexico (`es_MX`).
class AppLocalizationsEsMx extends AppLocalizationsEs {
  AppLocalizationsEsMx(): super('es_MX');

  @override
  String get app_name => 'Flutter Labs';

  @override
  String get animation_label => 'Animaciones';

  @override
  String get localization_label => 'Localización';

  @override
  String get localization_description => 'Su cartera de inversiones';

  @override
  String company_shares_total(int value) {
    final intl.NumberFormat valueNumberFormat = intl.NumberFormat.decimalPattern(localeName);
    final String valueString = valueNumberFormat.format(value);

    return 'Número de acciones: $valueString';
  }

  @override
  String company_shares_value(double value) {
    final intl.NumberFormat valueNumberFormat = intl.NumberFormat.currency(
      locale: localeName,
      decimalDigits: 2
    );
    final String valueString = valueNumberFormat.format(value);

    return 'Saldo: $valueString';
  }

  @override
  String last_update(DateTime date) {
    final intl.DateFormat dateDateFormat = intl.DateFormat.yMd(localeName);
    final String dateString = dateDateFormat.format(date);

    return 'Última actualización: $dateString';
  }
}
