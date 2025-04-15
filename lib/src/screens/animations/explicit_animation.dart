import 'package:flutter/material.dart';

class ExplicitAnimation extends StatefulWidget {
  const ExplicitAnimation({super.key});

  @override
  State<StatefulWidget> createState() => ExplicitAnimationState();
}

class ExplicitAnimationState extends State<ExplicitAnimation> with TickerProviderStateMixin {

  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600)
    )..repeat();

    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Explicit Animation"),
      ),
      body: AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          return Align(
            alignment: Alignment.center,
            child: Container(
              width: 200,
              height: 200,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: const [
                    Colors.cyan,
                    Colors.black87
                  ],
                  stops: [0, controller.value]
                )
              ),
            )
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}