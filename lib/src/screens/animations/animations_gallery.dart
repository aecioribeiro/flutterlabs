import 'package:flutter/material.dart';
import 'package:flutterlabs/l10n/app_intl.dart';
import 'package:flutterlabs/src/routes/app_routes.dart';
import 'package:flutterlabs/src/theme/app_labels.dart';
import 'package:go_router/go_router.dart';

class AnimationsGallery extends StatelessWidget {
  const AnimationsGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.animation_label,
          style: AppLabels.secondaryTitle,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.push(path(AppRoutes.implicitAnimation)),
              child: const Text("Implicit animation"),
            ),
            SizedBox(
              height: 18,
              width: MediaQuery.of(context).size.width,
            ),
            ElevatedButton(
              onPressed: () => context.push(path(AppRoutes.explicitAnimation)),
              child: const Text("Explicit animation"),
            ),
            const SizedBox(height: 18),
            ElevatedButton(
              onPressed: () => context.push(path(AppRoutes.heroAnimation)),
              child: const Text("Hero animation"),
            ),
            const SizedBox(height: 18),
            ElevatedButton(
              onPressed: () => context.push(path(AppRoutes.lottieAnimation)),
              child: const Text("Lottie"),
            ),
            const SizedBox(height: 18),
            ElevatedButton(
              onPressed: () => context.push(path(AppRoutes.customImplicitAnimation)),
              child: const Text("Custom Implicit Animation"),
            ),
            const SizedBox(height: 18),
            ElevatedButton(
              onPressed: () => context.push(path(AppRoutes.physicsAnimtion)),
              child: const Text("Physics Animation"),
            ),
            const SizedBox(height: 18),
          ],
        ),
      ),
    );
  }
}