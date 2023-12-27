import 'package:church_accounting/common/app_colors_theme.dart';
import 'package:church_accounting/feature/presentation/pages/main_screen.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  AppColors = DarkColors; // Темная тема
  // AppColors = LightColors; // Светлая тема
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppColors == DarkColors ? DARK_THEME : LIGHT_THEME,
      home: const MainPage(),
    );
  }
}
