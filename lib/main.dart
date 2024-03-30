import 'package:e_commerce/feature/view/home/home_screen.dart';
import 'package:e_commerce/product/utility/app_theme.dart';
import 'package:e_commerce/product/utility/responsive/responsive_build.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: AppTheme().currentTheme,
        home: const HomeScreen(),
      );
    });
  }
}
