import 'package:flutter/material.dart';

class CustomColorExtension extends ThemeExtension<CustomColorExtension> {
  const CustomColorExtension({
    required this.heroBackground,
    required this.profileCardBackground,
  });

  final Color heroBackground;
  final Color profileCardBackground;

  @override
  CustomColorExtension copyWith({
    Color? heroBackground,
    Color? profileCardBackground,
  }) {
    return CustomColorExtension(
      heroBackground: heroBackground ?? this.heroBackground,
      profileCardBackground:
          profileCardBackground ?? this.profileCardBackground,
    );
  }

  @override
  CustomColorExtension lerp(
    ThemeExtension<CustomColorExtension>? other,
    double t,
  ) {
    if (other is! CustomColorExtension) return this;
    return CustomColorExtension(
      heroBackground: Color.lerp(heroBackground, other.heroBackground, t)!,
      profileCardBackground: Color.lerp(
        profileCardBackground,
        other.profileCardBackground,
        t,
      )!,
    );
  }
}
