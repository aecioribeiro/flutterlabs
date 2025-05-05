import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:flutterlabs/l10n/app_intl.dart';
import 'package:flutterlabs/src/theme/app_colors.dart';
import 'package:flutterlabs/src/theme/app_labels.dart';
import 'package:intl/intl.dart';

class LocalizationPage extends StatefulWidget {
  const LocalizationPage({super.key});

  @override
  State<StatefulWidget> createState() => LocalizationPageState();
}

class LocalizationPageState extends State<LocalizationPage> {

  var locale = Locale('en');
  var flagCode = FlagsCode.US;
  final key = GlobalKey<ExpandableFabState>();

  String formatCurrency(num amount) {
    return NumberFormat.currency(
      locale: locale.toString(),
      symbol: '', // Let the system determine the symbol
    ).format(amount);
  }

  @override
  Widget build(BuildContext context) {
    return Localizations.override(
      context: context,
      locale: locale,
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.localization_label,
              style: AppLabels.secondaryTitle,
            ),
            actionsPadding: const EdgeInsets.symmetric(horizontal: 12,),
            actions: [
              SizedBox(
                width: 32,
                height: 32,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Flag.fromCode(
                    flagCode,
                    flagSize: FlagSize.size_1x1,
                  ),
                ),
              )
            ],
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(22),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: RichText(
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: AppLocalizations.of(context)!.localization_description,
                              style: AppLabels.displayLarge,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 22,),
                    Card(
                      elevation: 1,
                      color: AppColors.darkBackground,
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        width: double.maxFinite,
                        decoration: BoxDecoration(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "AAPL Apple Inc.",
                              style: AppLabels.textButton,
                            ),
                            Text(
                              AppLocalizations.of(context)!.company_shares_total(12),
                              style: AppLabels.bodyMedium,
                            ),
                            Text(
                              AppLocalizations.of(context)!.company_shares_value(2530.0),
                              style: AppLabels.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 1,
                      color: AppColors.darkBackground,
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        width: double.maxFinite,
                        decoration: BoxDecoration(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "AMZN - Amazon",
                              style: AppLabels.textButton,
                            ),
                            Text(
                              AppLocalizations.of(context)!.company_shares_total(20),
                              style: AppLabels.bodyMedium,
                            ),
                            Text(
                              AppLocalizations.of(context)!.company_shares_value(3720.0),
                              style: AppLabels.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 1,
                      color: AppColors.darkBackground,
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        width: double.maxFinite,
                        decoration: BoxDecoration(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "NFLX - Netflix",
                              style: AppLabels.textButton,
                            ),
                            Text(
                              AppLocalizations.of(context)!.company_shares_total(2),
                              style: AppLabels.bodyMedium,
                            ),
                            Text(
                              AppLocalizations.of(context)!.company_shares_value(2150),
                              style: AppLabels.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 22,),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        AppLocalizations.of(context)!.last_update(DateTime.now())
                      ),
                    )
                  ],
                ),
              ),
            )
          ),
          floatingActionButtonLocation: ExpandableFab.location,
          floatingActionButton: ExpandableFab(
            key: key,
            openButtonBuilder: RotateFloatingActionButtonBuilder(
              backgroundColor: AppColors.gradientEnd,
              fabSize: ExpandableFabSize.regular,
              child: Icon(Icons.language),
              shape: const CircleBorder(),
            ),
            closeButtonBuilder: DefaultFloatingActionButtonBuilder(
              child: Icon(Icons.close_fullscreen),
              backgroundColor: AppColors.gradientEnd,
              shape: const CircleBorder(),
            ),
            type: ExpandableFabType.up,
            overlayStyle: ExpandableFabOverlayStyle(
              color: Colors.black38
            ),
            distance: 82,
            children: [
              FloatingActionButton.extended(
                heroTag: "us",
                extendedPadding: const EdgeInsets.all(0),
                label: SizedBox(
                  width: 52,
                  height: 52,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(26),
                    child: Flag.fromCode(
                      FlagsCode.US,
                      flagSize: FlagSize.size_1x1,
                    ),
                  ),
                ),
                onPressed: ()  {
                  setState(() {
                    locale = Locale("en", '');
                    flagCode = FlagsCode.US;
                  });

                  final state = key.currentState;
                  if (state != null) {
                    state.toggle();
                  }
                },
                backgroundColor: Colors.transparent,
                shape: CircleBorder(),
              ),
              FloatingActionButton.extended(
                heroTag: "pt_br",
                extendedPadding: const EdgeInsets.all(0),
                label: SizedBox(
                  width: 52,
                  height: 52,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(26),
                    child: Flag.fromCode(
                      FlagsCode.BR,
                      flagSize: FlagSize.size_1x1,
                    ),
                  ),
                ),
                onPressed: ()  {
                  setState(() {
                    locale = Locale("pt", 'BR');
                    flagCode = FlagsCode.BR;
                  });

                  final state = key.currentState;
                  if (state != null) {
                    state.toggle();
                  }
                },
                backgroundColor: Colors.transparent,
                shape: CircleBorder(),
              ),
              FloatingActionButton.extended(
                heroTag: "es",
                extendedPadding: const EdgeInsets.all(0),
                label: SizedBox(
                  width: 52,
                  height: 52,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(26),
                    child: Flag.fromCode(
                      FlagsCode.ES,
                      flagSize: FlagSize.size_1x1,
                    ),
                  ),
                ),
                onPressed: ()  {
                  setState(() {
                    locale = Locale.fromSubtags(languageCode: "es");
                    flagCode = FlagsCode.ES;
                    Intl.defaultLocale = locale.toString();
                  });

                  final state = key.currentState;
                  if (state != null) {
                    state.toggle();
                  }
                },
                backgroundColor: Colors.transparent,
                shape: CircleBorder(),
              ),
              FloatingActionButton.extended(
                heroTag: "es_ar",
                extendedPadding: const EdgeInsets.all(0),
                label: SizedBox(
                  width: 52,
                  height: 52,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(26),
                    child: Flag.fromCode(
                      FlagsCode.MX,
                      flagSize: FlagSize.size_1x1,
                    ),
                  ),
                ),
                onPressed: () {
                  Intl.defaultLocale = locale.toString();
                  setState(() {
                    locale = Locale.fromSubtags(
                      languageCode: "es",
                      countryCode: 'MX'
                    );
                    flagCode = FlagsCode.MX;
                  });
                  final state = key.currentState;
                  if (state != null) {
                    state.toggle();
                  }
                },
                backgroundColor: Colors.transparent,
                shape: CircleBorder(),
              ),
              FloatingActionButton.extended(
                heroTag: "ar",
                extendedPadding: const EdgeInsets.all(0),
                label: SizedBox(
                  width: 52,
                  height: 52,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(26),
                    child: Flag.fromCode(
                      FlagsCode.SA,
                      flagSize: FlagSize.size_1x1,
                    ),
                  ),
                ),
                onPressed: () {
                  Intl.defaultLocale = locale.toString();
                  setState(() {
                    locale = Locale.fromSubtags(
                      languageCode: "ar",
                    );
                    flagCode = FlagsCode.SA;
                  });
                  final state = key.currentState;
                  if (state != null) {
                    state.toggle();
                  }
                },
                backgroundColor: Colors.transparent,
                shape: CircleBorder(),
              ),
            ]
          ),
        );
      },),
    );
  }
}