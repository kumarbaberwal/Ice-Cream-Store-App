import "package:flutter/material.dart";

class ColorFamily {
  final Color color;

  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  List<ExtendedColor> get extendedColors => [];

  ThemeData dark() {
    return theme(darkScheme());
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfff0ffeb),
      surfaceTint: Color(0xff9ed49c),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffa3d8a0),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfff0ffeb),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffbdd0b9),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9f9),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffffb7cc),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff101410),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfff6fdf1),
      outline: Color(0xffc6cdc1),
      outlineVariant: Color(0xffc6cdc1),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e4db),
      inversePrimary: Color(0xff00320c),
      primaryFixed: Color(0xffbef5bb),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffa3d8a0),
      onPrimaryFixedVariant: Color(0xff001b04),
      secondaryFixed: Color(0xffd9ecd4),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffbdd0b9),
      onSecondaryFixedVariant: Color(0xff0a1a0b),
      tertiaryFixed: Color(0xffffdfe6),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffffb7cc),
      onTertiaryFixedVariant: Color(0xff330218),
      surfaceDim: Color(0xff101410),
      surfaceBright: Color(0xff363a34),
      surfaceContainerLowest: Color(0xff0b0f0a),
      surfaceContainerLow: Color(0xff181d17),
      surfaceContainer: Color(0xff1c211b),
      surfaceContainerHigh: Color(0xff272b26),
      surfaceContainerHighest: Color(0xff313630),
    );
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffa3d8a0),
      surfaceTint: Color(0xff9ed49c),
      onPrimary: Color(0xff001b04),
      primaryContainer: Color(0xff6a9d6a),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffbdd0b9),
      onSecondary: Color(0xff0a1a0b),
      secondaryContainer: Color(0xff839680),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffb7cc),
      onTertiary: Color(0xff330218),
      tertiaryContainer: Color(0xffc67b92),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff101410),
      onSurface: Color(0xfff8fcf3),
      onSurfaceVariant: Color(0xffc6cdc1),
      outline: Color(0xff9ea59a),
      outlineVariant: Color(0xff7e857b),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e4db),
      inversePrimary: Color(0xff225227),
      primaryFixed: Color(0xffbaf0b7),
      onPrimaryFixed: Color(0xff001603),
      primaryFixedDim: Color(0xff9ed49c),
      onPrimaryFixedVariant: Color(0xff0d3f17),
      secondaryFixed: Color(0xffd5e8d0),
      onSecondaryFixed: Color(0xff061407),
      secondaryFixedDim: Color(0xffb9ccb4),
      onSecondaryFixedVariant: Color(0xff2a3a29),
      tertiaryFixed: Color(0xffffd9e2),
      onTertiaryFixed: Color(0xff2b0012),
      tertiaryFixedDim: Color(0xffffb1c8),
      onTertiaryFixedVariant: Color(0xff5b2238),
      surfaceDim: Color(0xff101410),
      surfaceBright: Color(0xff363a34),
      surfaceContainerLowest: Color(0xff0b0f0a),
      surfaceContainerLow: Color(0xff181d17),
      surfaceContainer: Color(0xff1c211b),
      surfaceContainerHigh: Color(0xff272b26),
      surfaceContainerHighest: Color(0xff313630),
    );
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff9ed49c),
      surfaceTint: Color(0xff9ed49c),
      onPrimary: Color(0xff053911),
      primaryContainer: Color(0xff205026),
      onPrimaryContainer: Color(0xffbaf0b7),
      secondary: Color(0xffb9ccb4),
      onSecondary: Color(0xff243424),
      secondaryContainer: Color(0xff3a4b39),
      onSecondaryContainer: Color(0xffd5e8d0),
      tertiary: Color(0xffffb1c8),
      onTertiary: Color(0xff541d32),
      tertiaryContainer: Color(0xff703348),
      onTertiaryContainer: Color(0xffffd9e2),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff101410),
      onSurface: Color(0xffe0e4db),
      onSurfaceVariant: Color(0xffc2c9bd),
      outline: Color(0xff8c9388),
      outlineVariant: Color(0xff424940),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e4db),
      inversePrimary: Color(0xff39693c),
      primaryFixed: Color(0xffbaf0b7),
      onPrimaryFixed: Color(0xff002106),
      primaryFixedDim: Color(0xff9ed49c),
      onPrimaryFixedVariant: Color(0xff205026),
      secondaryFixed: Color(0xffd5e8d0),
      onSecondaryFixed: Color(0xff101f10),
      secondaryFixedDim: Color(0xffb9ccb4),
      onSecondaryFixedVariant: Color(0xff3a4b39),
      tertiaryFixed: Color(0xffffd9e2),
      onTertiaryFixed: Color(0xff3a071d),
      tertiaryFixedDim: Color(0xffffb1c8),
      onTertiaryFixedVariant: Color(0xff703348),
      surfaceDim: Color(0xff101410),
      surfaceBright: Color(0xff363a34),
      surfaceContainerLowest: Color(0xff0b0f0a),
      surfaceContainerLow: Color(0xff181d17),
      surfaceContainer: Color(0xff1c211b),
      surfaceContainerHigh: Color(0xff272b26),
      surfaceContainerHighest: Color(0xff313630),
    );
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff002909),
      surfaceTint: Color(0xff39693c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff1c4c22),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff162616),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff374735),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff420e24),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff6b2f44),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff7fbf2),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff1f261e),
      outline: Color(0xff3e453c),
      outlineVariant: Color(0xff3e453c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d322c),
      inversePrimary: Color(0xffc3fac0),
      primaryFixed: Color(0xff1c4c22),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff01350e),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff374735),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff213120),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff6b2f44),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff50192e),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd7dbd3),
      surfaceBright: Color(0xfff7fbf2),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f5ec),
      surfaceContainer: Color(0xffebefe6),
      surfaceContainerHigh: Color(0xffe6e9e1),
      surfaceContainerHighest: Color(0xffe0e4db),
    );
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff1c4c22),
      surfaceTint: Color(0xff39693c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff4f8050),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff374735),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff687965),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff6b2f44),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffa55f76),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff7fbf2),
      onSurface: Color(0xff181d17),
      onSurfaceVariant: Color(0xff3e453c),
      outline: Color(0xff5a6158),
      outlineVariant: Color(0xff767d73),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d322c),
      inversePrimary: Color(0xff9ed49c),
      primaryFixed: Color(0xff4f8050),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff366639),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff687965),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff4f604d),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xffa55f76),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff89475e),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd7dbd3),
      surfaceBright: Color(0xfff7fbf2),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f5ec),
      surfaceContainer: Color(0xffebefe6),
      surfaceContainerHigh: Color(0xffe6e9e1),
      surfaceContainerHighest: Color(0xffe0e4db),
    );
  }

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff39693c),
      surfaceTint: Color(0xff39693c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffbaf0b7),
      onPrimaryContainer: Color(0xff002106),
      secondary: Color(0xff526350),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffd5e8d0),
      onSecondaryContainer: Color(0xff101f10),
      tertiary: Color(0xff8c4a60),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffd9e2),
      onTertiaryContainer: Color(0xff3a071d),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfff7fbf2),
      onSurface: Color(0xff181d17),
      onSurfaceVariant: Color(0xff424940),
      outline: Color(0xff72796f),
      outlineVariant: Color(0xffc2c9bd),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d322c),
      inversePrimary: Color(0xff9ed49c),
      primaryFixed: Color(0xffbaf0b7),
      onPrimaryFixed: Color(0xff002106),
      primaryFixedDim: Color(0xff9ed49c),
      onPrimaryFixedVariant: Color(0xff205026),
      secondaryFixed: Color(0xffd5e8d0),
      onSecondaryFixed: Color(0xff101f10),
      secondaryFixedDim: Color(0xffb9ccb4),
      onSecondaryFixedVariant: Color(0xff3a4b39),
      tertiaryFixed: Color(0xffffd9e2),
      onTertiaryFixed: Color(0xff3a071d),
      tertiaryFixedDim: Color(0xffffb1c8),
      onTertiaryFixedVariant: Color(0xff703348),
      surfaceDim: Color(0xffd7dbd3),
      surfaceBright: Color(0xfff7fbf2),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f5ec),
      surfaceContainer: Color(0xffebefe6),
      surfaceContainerHigh: Color(0xffe6e9e1),
      surfaceContainerHighest: Color(0xffe0e4db),
    );
  }
}
