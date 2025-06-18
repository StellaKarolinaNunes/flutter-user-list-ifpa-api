import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';
import 'constants/app_colors.dart';
import 'constants/app_fonts.dart';
import 'providers/usuario_provider.dart';

void main() {
  runApp(const UserListApp());
}

class UserListApp extends StatelessWidget {
  const UserListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UsuarioProvider()),
      ],
      child: MaterialApp(
        title: 'Lista de Usuários',
        theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.indigo,
          scaffoldBackgroundColor: AppColors.background,
          scrollbarTheme: ScrollbarThemeData(
            thumbColor: MaterialStateProperty.all(
              AppColors.primary.withOpacity(0.7),
            ),
            trackColor: MaterialStateProperty.all(
              AppColors.primary.withOpacity(0.07),
            ),
            trackBorderColor: MaterialStateProperty.all(Colors.transparent),
            radius: const Radius.circular(20),
            thickness: MaterialStateProperty.all(7),
          ),
          fontFamily: AppFonts.main,
        ),
        home: const HomeScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
