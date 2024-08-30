

import 'package:flutter/material.dart';

class FadeAnimation extends StatelessWidget {
  const FadeAnimation({super.key, required this.child, this.begin = 0, this.curve = Curves.fastOutSlowIn, this.duration= const Duration(milliseconds: 3000), this.end = 1, this.intervalEnd = 1, this.intervalStart = 0,});
  final double begin;
  final double end;
  final Duration duration;
  final double intervalStart;
  final double intervalEnd; 
  final Curve curve;
  final Widget child; 

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(

      tween: Tween(begin: begin,end: end),
      duration: duration,
      curve: Interval(intervalStart, intervalEnd, curve: curve),
      child: child,
      builder: (BuildContext context, double value,
      Widget? child){
        return Opacity(opacity: value,
        child: child);
      }
    );
  }


}