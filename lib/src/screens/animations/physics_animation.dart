import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

class PhysicsAnimation extends StatelessWidget {
  const PhysicsAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return const PhysicsCardDragDemo();
  }
}


class PhysicsCardDragDemo extends StatelessWidget {
  const PhysicsCardDragDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Physics Animation"),
      ),
      body: const DraggableCard(child: FlutterLogo(size: 128)),
    );
  }
}

class DraggableCard extends StatefulWidget {
  const DraggableCard({required this.child, super.key});

  final Widget child;

  @override
  State<DraggableCard> createState() => _DraggableCardState();
}

class _DraggableCardState extends State<DraggableCard> with SingleTickerProviderStateMixin {
  late AnimationController controller;

  Alignment dragAlignment = Alignment.center;

  late Animation<Alignment> animation;

  void runAnimation(Offset pixelsPerSecond, Size size) {
    animation = controller.drive(
      AlignmentTween(begin: dragAlignment, end: Alignment.center),
    );
    final unitsPerSecondX = pixelsPerSecond.dx / size.width;
    final unitsPerSecondY = pixelsPerSecond.dy / size.height;
    final unitsPerSecond = Offset(unitsPerSecondX, unitsPerSecondY);
    final unitVelocity = unitsPerSecond.distance;

    const spring = SpringDescription(mass: 30, stiffness: 1, damping: 1);

    final simulation = SpringSimulation(spring, 0, 1, -unitVelocity);

    controller.animateWith(simulation);
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this);

    controller.addListener(() {
      setState(() {
        dragAlignment = animation.value;
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onPanDown: (details) {
        controller.stop();
      },
      onPanUpdate: (details) {
        setState(() {
          dragAlignment += Alignment(
            details.delta.dx / (size.width / 2),
            details.delta.dy / (size.height / 2),
          );
        });
      },
      onPanEnd: (details) {
        runAnimation(details.velocity.pixelsPerSecond, size);
      },
      child: Align(alignment: dragAlignment, child: Card(child: widget.child)),
    );
  }
}
