import 'package:e_commerce/feature/view/home/home_screen.dart';
import 'package:e_commerce/product/init/application_init.dart';
import 'package:e_commerce/product/utility/theme/app_theme.dart';
import 'package:e_commerce/product/utility/responsive/responsive_build.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  ApplicationInit.init();
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        theme: theme,
        home: const HomeScreen(),
      );
    });
  }
}
