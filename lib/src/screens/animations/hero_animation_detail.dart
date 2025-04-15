import 'package:flutter/material.dart';

class HeroAnimationDetail extends StatefulWidget {
  const HeroAnimationDetail({super.key, required this.index});

  final int index;

  @override
  State<StatefulWidget> createState() => HeroAnimState();
}

class HeroAnimState extends State<HeroAnimationDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Align(
          alignment: Alignment.topCenter,
          child: Card(
            elevation: 0,
            color: Colors.transparent,
            child: Hero(
              tag: "my_dog_${widget.index}",
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  "assets/dog.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ),
      ),
    );
  }
}