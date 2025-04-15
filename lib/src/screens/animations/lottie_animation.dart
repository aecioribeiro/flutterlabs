import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimation extends StatefulWidget {
  const LottieAnimation({super.key});

  @override
  State<StatefulWidget> createState() => LottieAnimationState();
}

class LottieAnimationState extends State<LottieAnimation> {

  final letters = [
    "A", "B", "C", "D",
    "E", "F", "G", "H",
    "I", "J", "K", "L",
    "M", "N", "O", "P",
    "Q", "R", "S", "T",
    "U", "V", "W", "X",
    "Y", "Z"
  ];

  final url = "https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lottie"),
      ),
      body: SafeArea(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4
          ),
          itemCount: 26,
          itemBuilder: (context, index) {
            return SizedBox(
              child: Lottie.network(
                "$url/${letters[index]}.json",
                repeat: true
              ),
            );
          },
        ),
      ),
    );
  }
}