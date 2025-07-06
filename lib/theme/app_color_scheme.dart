import 'package:flutter/material.dart';

final ColorScheme appColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: const Color(0xFFF5F5F5),
  onPrimary: const Color(0xFF212121),
  secondary: const Color(0xFFBDBDBD),
  onSecondary: const Color(0xFF212121),
  surface: Colors.white,
  onSurface: const Color(0xFF212121),
  error: Colors.red,
  onError: Colors.white,
);

final ColorScheme appDarkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: const Color(0xFF212121),
  onPrimary: Colors.white,
  secondary: const Color(0xFF424242),
  onSecondary: Colors.white,
  surface: const Color(0xFF121212),
  onSurface: Colors.white,
  error: Colors.red.shade400,
  onError: Colors.black,
);
