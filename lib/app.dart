import 'package:flutter/material.dart';
import 'router.dart';
import 'theme/app_color_scheme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Package Browser',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: appColorScheme,
        scaffoldBackgroundColor: appColorScheme.surface,
        appBarTheme: AppBarTheme(
          backgroundColor: appColorScheme.surface,
          foregroundColor: appColorScheme.onSurface,
          elevation: 0,
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: appDarkColorScheme,
        scaffoldBackgroundColor: appDarkColorScheme.surface,
        appBarTheme: AppBarTheme(
          backgroundColor: appDarkColorScheme.surface,
          foregroundColor: appDarkColorScheme.onSurface,
          elevation: 0,
        ),
      ),
      routerConfig: router,
    );
  }
}
