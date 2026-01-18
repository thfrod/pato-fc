import 'package:flutter/material.dart';
import 'package:patofc/@shared/theme/tokens/colors.dart';

abstract class AppTheme {
  static ThemeData get dark {
    return ThemeData(
      useMaterial3: true,
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: AppColors.orangeVibrante,
        onPrimary: Colors.white,
        secondary: AppColors.amareloSol,
        onSecondary: AppColors.cinzaGrafiteEscuro,
        surface: AppColors.cinzaGrafiteEscuro,
        onSurface: AppColors.brancoOffWhite,
        error: Colors.red,
        onError: Colors.white,
      ),
      scaffoldBackgroundColor: AppColors.cinzaGrafiteEscuro,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.cinzaGrafiteEscuro,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.brancoOffWhite),
        titleTextStyle: TextStyle(
          color: AppColors.brancoOffWhite,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.orangeVibrante,
          foregroundColor: Colors.white,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.cinzaGrafiteEscuro,
        selectedItemColor: AppColors.orangeVibrante,
        unselectedItemColor: Colors.white60,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
