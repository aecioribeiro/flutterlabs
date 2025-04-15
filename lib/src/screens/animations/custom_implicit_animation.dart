
import 'package:flutter/material.dart';

class CustomImplicitAnimation extends StatefulWidget {
  const CustomImplicitAnimation({super.key});

  @override
  State<StatefulWidget> createState() => CustomImplicitAnimationState();
}

class CustomImplicitAnimationState extends State<CustomImplicitAnimation> {

  var color = Colors.white;
  late ColorTween colorTween;

  @override
  void initState() {
    colorTween = ColorTween(begin: Colors.white, end: color);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom implicit animation"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            TweenAnimationBuilder(
              tween: ColorTween(begin: Colors.white, end: color),
              duration: const Duration(milliseconds: 800),
              builder: (context, value, child) {
                return ColorFiltered(
                  colorFilter: ColorFilter.mode(value as Color, BlendMode.modulate),
                  child: Image.asset(
                    "assets/dog.jpeg",
                  ),
                );
              },
            ),
            const SizedBox(height: 22,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 120,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        // colorTween = ColorTween(begin: Colors.white, end: Colors.red);
                        color = Colors.red;
                      });
                    },
                    child: const Text("Red")
                  ),
                ),
                SizedBox(
                  width: 120,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        color = Colors.yellow;
                      });
                    },
                    child: const Text("Yellow")
                  ),
                ),
              ],
            )
          ],
        )
      ),
    );
  }
}