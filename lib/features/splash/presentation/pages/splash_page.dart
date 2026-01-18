import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final logoPath = 'assets/images/logo.svg';

    return Scaffold(
      backgroundColor: colors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              logoPath,
              width: MediaQuery.sizeOf(context).width * 0.5,
            ),
          ],
        ),
      ),
    );
  }
}
