import 'package:admin_dashboard/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Class defining theme of the application
class AppTheme {
  /// Light Theme
  static final ThemeData lightThemeData = ThemeData(
    primaryColor: LightColor.primaryColor,
    iconTheme: const IconThemeData(color: LightColor.primaryColor),
    useMaterial3: true,
    switchTheme: const SwitchThemeData(),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: LightColor.background,
      selectedItemColor: LightColor.onBackground,
      unselectedItemColor: LightColor.secondaryColor,
      elevation: 0,
      selectedLabelStyle: TextStyle(
        color: LightColor.secondaryColor,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: TextStyle(
        color: LightColor.secondaryColor,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),
    appBarTheme: const AppBarTheme(
      color: LightColor.primaryColor,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarColor: LightColor.primaryColor,
      ),
    ),
    brightness: Brightness.light,
    scaffoldBackgroundColor: LightColor.background,
    fontFamily: 'Roboto',
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: LightColor.onBackground,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      ),
      headlineMedium: TextStyle(
        color: LightColor.onBackground,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      headlineSmall: TextStyle(
        color: LightColor.onBackground,
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
      bodyLarge: TextStyle(
        color: LightColor.onBackground,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: TextStyle(
        color: LightColor.onBackground,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: TextStyle(
        color: LightColor.onBackground,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      titleSmall: TextStyle(
        color: LightColor.onBackground,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      titleMedium: TextStyle(
        color: LightColor.onBackground,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      titleLarge: TextStyle(
        color: LightColor.onBackground,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      displayMedium: TextStyle(
        fontSize: 14,
        color: LightColor.onBackground,
        fontWeight: FontWeight.w600,
      ),
      displaySmall: TextStyle(
        fontSize: 12,
        color: LightColor.onBackground,
        fontWeight: FontWeight.w500,
      ),
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: LightColor.secondaryColor,
      brightness: Brightness.light,
      onSecondary: LightColor.onSecondary,
      tertiary: LightColor.grey,
      primary: LightColor.primaryColor,
      onPrimary: LightColor.onPrimary,
      background: LightColor.background,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: LightColor.onSecondary,
        backgroundColor: LightColor.secondaryColor,
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        minimumSize: Size.zero,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: LightColor.background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: const BorderSide(
            color: LightColor.secondaryColor,
            width: 2,
          ),
        ),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: LightColor.onBackground,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: LightColor.background,
        textStyle: const TextStyle(
          fontSize: 14,
          color: LightColor.onBackground,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        minimumSize: Size.zero,
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: LightColor.grey,
      thickness: 1,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: LightColor.secondaryColor,
    ),
    hintColor: LightColor.hintColor,
    inputDecorationTheme: InputDecorationTheme(
      border: const OutlineInputBorder(
        borderSide: BorderSide(
          color: LightColor.lightGrey,
        ),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: LightColor.lightGrey,
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: LightColor.lightGrey,
        ),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: LightColor.error,
        ),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: LightColor.error,
        ),
      ),
      suffixIconColor: LightColor.secondaryColor,
      prefixIconColor:
          MaterialStateColor.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.focused)) {
          return LightColor.lightGrey;
        }

        return LightColor.secondaryColor;
      }),
      labelStyle: const TextStyle(
        color: LightColor.onBackground,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      hintStyle: const TextStyle(
        color: LightColor.hintColor,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      errorStyle: const TextStyle(
        color: LightColor.error,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent,
    ),
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: LightColor.secondaryColor),
  );

  /// Dark theme
  static final ThemeData darkThemeData = ThemeData(
    primaryColor: DarkColor.primaryColor,
    iconTheme: const IconThemeData(color: DarkColor.secondaryColor),
    useMaterial3: true,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: DarkColor.primaryColor,
      selectedItemColor: DarkColor.primaryColor,
      unselectedItemColor: DarkColor.secondaryColor,
      elevation: 0,
      selectedLabelStyle: TextStyle(
        color: DarkColor.secondaryColor,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: TextStyle(
        color: DarkColor.secondaryColor,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
    ),
    appBarTheme: const AppBarTheme(
      color: DarkColor.primaryColor,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarColor: DarkColor.primaryColor,
      ),
    ),
    brightness: Brightness.dark,
    scaffoldBackgroundColor: DarkColor.primaryColor,
    cardColor: DarkColor.secondaryColor,
    unselectedWidgetColor: DarkColor.secondaryColor,
    fontFamily: 'Roboto',
    splashColor: DarkColor.secondaryColor,
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: DarkColor.secondaryColor,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      ),
      headlineMedium: TextStyle(
        color: DarkColor.secondaryColor,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      headlineSmall: TextStyle(
        color: DarkColor.secondaryColor,
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
      bodyLarge: TextStyle(
        color: DarkColor.secondaryColor,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: TextStyle(
        color: DarkColor.secondaryColor,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: TextStyle(
        color: DarkColor.secondaryColor,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      titleSmall: TextStyle(
        color: DarkColor.secondaryColor,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      titleMedium: TextStyle(
        color: DarkColor.secondaryColor,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      titleLarge: TextStyle(
        color: DarkColor.secondaryColor,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      displayMedium: TextStyle(
        fontSize: 14,
        color: DarkColor.secondaryColor,
        fontWeight: FontWeight.w600,
      ),
      displaySmall: TextStyle(
        fontSize: 12,
        color: DarkColor.secondaryColor,
        fontWeight: FontWeight.w500,
      ),
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: DarkColor.secondaryColor,
      brightness: Brightness.dark,
      onSecondary: LightColor.secondaryColor,
      tertiary: LightColor.grey,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: DarkColor.secondaryColor,
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        minimumSize: Size.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: DarkColor.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: const BorderSide(
            color: DarkColor.grey,
          ),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: LightColor.secondaryColor,
        foregroundColor: LightColor.onBackground,
        textStyle: const TextStyle(
          fontSize: 14,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        minimumSize: Size.zero,
      ),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: DarkColor.secondaryColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: const OutlineInputBorder(
        borderSide: BorderSide(
          color: DarkColor.grey,
        ),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: DarkColor.grey,
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: DarkColor.grey,
        ),
      ),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red.withOpacity(
            0.1,
          ),
        ),
      ),
      suffixIconColor: LightColor.secondaryColor,
      prefixIconColor:
          MaterialStateColor.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.focused)) {
          return DarkColor.lightGrey;
        }

        return DarkColor.secondaryColor;
      }),
      labelStyle: const TextStyle(
        color: DarkColor.secondaryColor,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      hintStyle: const TextStyle(
        color: DarkColor.secondaryColor,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      errorStyle: TextStyle(
        color: Colors.red.withOpacity(0.1),
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent,
    ),
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: DarkColor.primaryColor),
  );
}
