import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final animationPath = 'assets/animations/logo-animation.json';

    return Scaffold(
      backgroundColor: colors.primary,
      body: Center(child: LottieBuilder.asset(animationPath)),
    );
  }
}
