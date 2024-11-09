import 'dart:math';

import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';

class ShakeWidget extends StatefulWidget {
  const ShakeWidget({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  ShakeWidgetState createState() => ShakeWidgetState();
}

class ShakeWidgetState extends AnimationControllerState<ShakeWidget> {
  final Duration shakeDuration = const Duration(milliseconds: 300);
  final double shakeOffset = 3;
  final int shakeCount = 3;

  @override
  void initState() {
    super.initState();
    animationController.addStatusListener(_updateAnimationStatus);
  }

  @override
  void dispose() {
    animationController.removeStatusListener(_updateAnimationStatus);
    super.dispose();
  }

  void _updateAnimationStatus(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          animationController.reset();
        }
      });
    }
  }

  void shakeWidget() {
    animationController.forward();
    _vibrateDevice();
  }

  Future<void> _vibrateDevice() async {
    if (await Vibration.hasVibrator() ?? false) {
      await Vibration.vibrate(duration: shakeDuration.inMilliseconds);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      child: widget.child,
      builder: (context, child) {
        final sineValue = sin(shakeCount * 2 * pi * animationController.value);
        return Transform.translate(
          offset: Offset(sineValue * shakeOffset, 0),
          child: child,
        );
      },
    );
  }
}

abstract class AnimationControllerState<T extends StatefulWidget>
    extends State<T> with SingleTickerProviderStateMixin {
  late final animationController = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 300));

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
