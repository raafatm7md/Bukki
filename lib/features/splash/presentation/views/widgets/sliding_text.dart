import 'package:bukki/core/constants/styles.dart';
import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  final Animation<Offset> slidingAnimation;
  const SlidingText({super.key, required this.slidingAnimation});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: const Text(
            'Bukki',
            style: Styles.logo,
            textAlign: TextAlign.center,
          ),
        );
      },
      animation: slidingAnimation,
    );
  }
}
