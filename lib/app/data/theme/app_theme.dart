import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../values/fonts.dart';
import 'app_colors.dart';


class AppTheme {
  static final theme = ThemeData(
    fontFamily: Fonts.arial,
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(statusBarBrightness: Brightness.light,statusBarColor: AppColors.white)
      //  brightness: Brightness.light
    ),
    primaryColor: AppColors.primaryColor,
    useMaterial3: false,
    scaffoldBackgroundColor: AppColors.white
  );
}
