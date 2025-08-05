import 'package:flutter/material.dart';
import '../../../../widgets/custom_text.dart';

class AnimatedCountText extends StatelessWidget {
  final String count;
  final TextStyle? style;
  final Duration duration;

  const AnimatedCountText({
    super.key,
    required this.count,
    this.style,
    this.duration = const Duration(milliseconds: 500),
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: IntTween(begin: 0, end: int.tryParse(count) ?? 0),
      duration: duration,
      builder: (context, value, child) {
        return Text(
          "$value",
          style: style,
        );
      },
    );
  }
}
