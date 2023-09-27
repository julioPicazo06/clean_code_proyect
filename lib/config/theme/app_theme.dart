import 'package:flutter/material.dart';

  // ignore: use_key_in_widget_constructors
class AppTheme {
  
  ThemeData getTheme () => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorSchemeSeed: const Color.fromRGBO(180, 16, 92, 1)
  );

}