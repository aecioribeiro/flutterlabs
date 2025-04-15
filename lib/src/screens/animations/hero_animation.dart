import 'package:flutter/material.dart';
import 'package:flutterlabs/src/routes/app_routes.dart';
import 'package:go_router/go_router.dart';

class HeroAnimation extends StatelessWidget {
  const HeroAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hero Animation"),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: SizedBox(
                    width: 120,
                    height: 120,
                    child: InkWell(
                      onTap: () => context.push(path(AppRoutes.heroAnimationDetail), extra: index),
                      child: Hero(
                        tag: "my_dog_$index",
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "assets/dog.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12,),
                const Expanded(
                  child: Text("Custom animation"),
                )
              ]
            );
          },
        )
      ),
    );
  }
}