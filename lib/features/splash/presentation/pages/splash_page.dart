import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
// ignore: depend_on_referenced_packages
import 'package:page_transition/page_transition.dart';
import 'package:patofc/features/auth/presentation/pages/login_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final animationPath = 'assets/animations/logo-animation.json';

    return AnimatedSplashScreen(
      backgroundColor: colors.primary,
      splash: Center(child: LottieBuilder.asset(animationPath, repeat: true)),
      nextScreen: const LoginPage(),
      splashIconSize: MediaQuery.sizeOf(context).width * 0.75,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
    );
  }
}
