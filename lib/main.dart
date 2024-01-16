import 'package:church_accounting/common/app_colors_theme.dart';
import 'package:church_accounting/feature/presentation/bloc/bloc_wallets_list/wallets_list_bloc.dart';
import 'package:church_accounting/feature/presentation/pages/main_screen.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return BlocProvider(
      create: (BuildContext context) => WalletsListBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppColors == DarkColors ? DARK_THEME : LIGHT_THEME,
        home: const MainPage(),
      ),
    );
  }
}
