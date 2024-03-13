import 'package:church_accounting/common/app_colors_theme.dart';
import 'package:church_accounting/feature/presentation/bloc/bloc_wallets_list/operations_list_bloc.dart';
import 'package:church_accounting/feature/presentation/bloc/bloc_wallets_list/wallets_list_bloc.dart';
import 'package:church_accounting/feature/presentation/pages/main_screen.dart';
import 'package:church_accounting/locator_service.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:church_accounting/locator_service.dart' as di;

void main(List<String> args) async {
  AppColors = DarkColors; // Темная тема
  // AppColors = LightColors; // Светлая тема
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<WalletsListBloc>(
            create: (BuildContext context) => sl<WalletsListBloc>()),
        BlocProvider<OperationsListBloc>(
            create: (BuildContext context) => sl<OperationsListBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppColors == DarkColors ? DARK_THEME : LIGHT_THEME,
        home: const MainPage(),
      ),
    );
  }
}
