// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_intl.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get app_name => 'Flutter Labs';

  @override
  String get animation_label => 'Animações';

  @override
  String get localization_label => 'Localização';

  @override
  String get localization_description => 'Sua carteira de investimentos';

  @override
  String company_shares_total(int value) {
    final intl.NumberFormat valueNumberFormat = intl.NumberFormat.decimalPattern(localeName);
    final String valueString = valueNumberFormat.format(value);

    return 'Número de ações: $valueString';
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

    return 'Última atualização: $dateString';
  }
}

/// The translations for Portuguese, as used in Brazil (`pt_BR`).
class AppLocalizationsPtBr extends AppLocalizationsPt {
  AppLocalizationsPtBr(): super('pt_BR');

  @override
  String get app_name => 'Flutter Labs';

  @override
  String get animation_label => 'Animações';

  @override
  String get localization_label => 'Localização';

  @override
  String get localization_description => 'Sua carteira de investimentos';

  @override
  String company_shares_total(int value) {
    final intl.NumberFormat valueNumberFormat = intl.NumberFormat.decimalPattern(localeName);
    final String valueString = valueNumberFormat.format(value);

    return 'Número de ações: $valueString';
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

    return 'Última atualização: $dateString';
  }
}
