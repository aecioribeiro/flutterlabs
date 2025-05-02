import 'package:flutter/material.dart';
import 'package:flutterlabs/l10n/app_intl.dart';
import 'package:flutterlabs/src/routes/app_routes.dart';
import 'package:flutterlabs/src/theme/app_colors.dart';
import 'package:flutterlabs/src/theme/app_labels.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 220,
            width: MediaQuery.of(context).size.width,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.darkBackground
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  AppLocalizations.of(context)?.app_name ?? "",
                  style: AppLabels.titleLarge,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: OutlinedButton(
                onPressed: () => context.push(path(AppRoutes.animations)),
                child: Text(AppLocalizations.of(context)!.animation_label),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: OutlinedButton(
                onPressed: () => context.push(path(AppRoutes.localizations)),
                child: Text(AppLocalizations.of(context)!.localization_label),
              ),
            ),
          ),
        ],
      ),
    );
  }
}