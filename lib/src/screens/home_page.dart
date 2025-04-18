import 'package:flutter/material.dart';
import 'package:flutterlabs/src/routes/app_routes.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () => context.push(path(AppRoutes.animations)),
                child: const Text("Animations"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}