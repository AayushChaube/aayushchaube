import 'package:aayushchaube/themes/custom_color_extension.dart';
import 'package:aayushchaube/themes/custom_colors.dart';
import 'package:aayushchaube/themes/custom_fonts.dart';
import 'package:flutter/material.dart';

class CustomThemes {
  // Custom color for hero section
  static const Color heroBackgroundColor = CustomColors.color22; // Cream/beige

  // Light ColorScheme (Material 3)
  static const ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: CustomColors.color18, // Blue primary
    onPrimary: CustomColors.color50, // White text on primary
    primaryContainer: CustomColors.color16, // Light blue container
    onPrimaryContainer: CustomColors.color20, // Dark blue text
    secondary: CustomColors.color42, // Beige secondary
    onSecondary: CustomColors.color25, // Dark text on secondary
    secondaryContainer: CustomColors.color21, // Light beige container
    onSecondaryContainer: CustomColors.color25, // Dark text
    tertiary: CustomColors.color28, // Purple tertiary
    onTertiary: CustomColors.color56, // White text on tertiary
    tertiaryContainer: CustomColors.color26, // Light purple container
    onTertiaryContainer: CustomColors.color30, // Dark purple text
    error: CustomColors.color3, // Red error
    onError: CustomColors.color1, // White text on error
    errorContainer: CustomColors.color3, // Red error container
    onErrorContainer: CustomColors.color1, // White text
    surface: CustomColors.color11, // White surface
    onSurface: CustomColors.color15, // Black text on surface
    surfaceContainerLowest: CustomColors.color11, // Lowest elevation
    surfaceContainerLow: CustomColors.color12, // Low elevation
    surfaceContainer: CustomColors.color38, // Default container
    surfaceContainerHigh: CustomColors.color39, // High elevation
    surfaceContainerHighest: CustomColors.color13, // Highest elevation
    onSurfaceVariant: CustomColors.color14, // Gray text variant
    outline: CustomColors.color47, // Gray outline
    outlineVariant: CustomColors.color13, // Light gray outline
    shadow: CustomColors.color2, // Black shadow
    scrim: CustomColors.color2, // Black scrim
    inverseSurface: CustomColors.color15, // Black inverse surface
    onInverseSurface: CustomColors.color11, // White text on inverse
    inversePrimary: CustomColors.color17, // Light blue inverse primary
    surfaceTint: CustomColors.color18, // Primary tint
  );

  // Semantic color getters for easy access
  static Color get primaryColor => lightColorScheme.primary;
  static Color get backgroundColor => lightColorScheme.surface;
  static Color get textColor => lightColorScheme.onSurface;
  static Color get accentColor => lightColorScheme.secondary;

  // Font styles
  static const TextStyle fontStyleH1 = CustomFonts.font0;
  static const TextStyle fontStyleH2 = CustomFonts.font2;
  static const TextStyle fontStyleH3 = CustomFonts.font3;
  static const TextStyle fontStyleH4 = CustomFonts.font4;
  static const TextStyle fontStyleH5 = CustomFonts.font5;
  static const TextStyle fontStyleH6 = CustomFonts.font6;
  static const TextStyle fontStyleBodyLarge = CustomFonts.font7;
  static const TextStyle fontStyleBodyMedium = CustomFonts.font8;
  static const TextStyle fontStyleBodySmall = CustomFonts.font9;
  static const TextStyle fontStyleBodyXSmall = CustomFonts.font10;

  // ThemeData factory methods
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: lightColorScheme,
      extensions: <ThemeExtension<dynamic>>[
        CustomColorExtension(
          heroBackground: heroBackgroundColor,
          profileCardBackground: CustomColors.color21,
        ),
      ],
      textTheme: TextTheme(
        displayLarge: fontStyleH1.copyWith(color: lightColorScheme.onSurface),
        displayMedium: fontStyleH2.copyWith(color: lightColorScheme.onSurface),
        displaySmall: fontStyleH3.copyWith(color: lightColorScheme.onSurface),
        headlineLarge: fontStyleH4.copyWith(color: lightColorScheme.onSurface),
        headlineMedium: fontStyleH5.copyWith(color: lightColorScheme.onSurface),
        headlineSmall: fontStyleH6.copyWith(color: lightColorScheme.onSurface),
        titleLarge: fontStyleH6.copyWith(color: lightColorScheme.onSurface),
        titleMedium: fontStyleBodyLarge.copyWith(
          color: lightColorScheme.onSurface,
        ),
        titleSmall: fontStyleBodyMedium.copyWith(
          color: lightColorScheme.onSurface,
        ),
        bodyLarge: fontStyleBodyLarge.copyWith(
          color: lightColorScheme.onSurface,
        ),
        bodyMedium: fontStyleBodyMedium.copyWith(
          color: lightColorScheme.onSurface,
        ),
        bodySmall: fontStyleBodySmall.copyWith(
          color: lightColorScheme.onSurface,
        ),
        labelLarge: fontStyleBodyMedium.copyWith(
          color: lightColorScheme.onSurface,
        ),
        labelMedium: fontStyleBodySmall.copyWith(
          color: lightColorScheme.onSurface,
        ),
        labelSmall: fontStyleBodyXSmall.copyWith(
          color: lightColorScheme.onSurface,
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: lightColorScheme.surface,
        foregroundColor: lightColorScheme.onSurface,
        elevation: 0,
        scrolledUnderElevation: 0,
        titleTextStyle: fontStyleH5.copyWith(color: lightColorScheme.onSurface),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: lightColorScheme.primary,
          foregroundColor: lightColorScheme.onPrimary,
          textStyle: fontStyleBodyMedium.copyWith(fontWeight: FontWeight.w600),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: lightColorScheme.onSurface,
          backgroundColor: lightColorScheme.surface,
          side: BorderSide(color: lightColorScheme.outline, width: 1.5),
          textStyle: fontStyleBodyMedium.copyWith(fontWeight: FontWeight.w600),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        ),
      ),
    );
  }

  static ThemeData get darkTheme => lightTheme; // For now, use light theme
  static ThemeData get themeData => lightTheme; // Legacy support
}
