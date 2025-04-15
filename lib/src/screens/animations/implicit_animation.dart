import 'package:flutter/material.dart';

class ImplicitAnimation extends StatefulWidget {
  const ImplicitAnimation({super.key});

  @override
  State<StatefulWidget> createState() => ImplicitAnimationState();
}

class ImplicitAnimationState extends State<ImplicitAnimation> {

  var opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Implict Animation"),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: opacity,
              duration: const Duration(milliseconds: 400),
              child: Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  color: Colors.green
                ),
                child: const Center(),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  opacity = 0;
                });
              },
              child: const Text("Fade"),
            ),
          ]
        ),
      )
    );
  }
}