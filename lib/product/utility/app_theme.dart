import 'package:e_commerce/product/generation/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

@immutable
final class AppTheme {
  AppTheme() {
    _themeData = ThemeData.light();
  }

  late final ThemeData _themeData;

  ThemeData get currentTheme => _themeData.copyWith(
        tabBarTheme: const TabBarTheme(
          labelColor: ColorName.white,
          indicatorColor: ColorName.highToneOrange,
          dividerColor: Colors.transparent,
        ),
        progressIndicatorTheme: const ProgressIndicatorThemeData(
            // color: ColorName.lust,
            ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorName.white,
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(
              vertical: 16,
            ),
            elevation: 0,
            foregroundColor: Colors.white,
            textStyle: _themeData.textTheme.titleMedium?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: ColorName.highToneOrange,
          foregroundColor: Colors.white,
          shape: CircleBorder(),
        ),
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        colorScheme: const ColorScheme.light(
          onSecondary: Colors.white,
          onPrimaryContainer: ColorName.highToneOrange,
          onBackground: ColorName.lightColorOrange,
          onError: ColorName.white,
        ),
        textTheme: _themeData.textTheme.copyWith(
          headlineLarge: ThemeData.dark().textTheme.headlineLarge?.copyWith(
                color: Colors.white,
              ),
          titleMedium: _themeData.textTheme.titleMedium?.copyWith(
            color: Colors.white,
          ),
          titleSmall: _themeData.textTheme.titleSmall?.copyWith(
            color: Colors.white,
          ),
        ),
      );
}
