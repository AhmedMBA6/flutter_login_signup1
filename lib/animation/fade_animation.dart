import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:simple_animations/simple_animations.dart';

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;
  const FadeAnimation({super.key, required this.delay, required this.child});

  @override
  Widget build(BuildContext context) {
    final tween = MovieTween()
      ..tween("opacity", Tween(begin: 0.0, end: 1.0),
              duration: const Duration(milliseconds: 500))
          .thenTween("transity", Tween(begin: -130.0, end: 0.0),
              duration: const Duration(milliseconds: 700),
              curve: Curves.easeInOut);
    return PlayAnimationBuilder(
      tween: tween,
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: tween.duration,
      builder: (context, value, child) => Opacity(
        opacity: value.get("opacity"),
        child: Transform.translate(
          // offset: Offset(0, value.get("transity")),
          child: child,
        ),
      ),
      child: child,
    );
  }
}
