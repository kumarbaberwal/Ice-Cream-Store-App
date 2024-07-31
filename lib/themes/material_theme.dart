import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4281952572),
      surfaceTint: Color(4281952572),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4290441399),
      onPrimaryContainer: Color(4278198534),
      secondary: Color(4283589456),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4292208848),
      onSecondaryContainer: Color(4279246608),
      tertiary: Color(4287384160),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4294957538),
      onTertiaryContainer: Color(4281992989),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294441970),
      onSurface: Color(4279770391),
      onSurfaceVariant: Color(4282534208),
      outline: Color(4285692271),
      outlineVariant: Color(4290955709),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281152044),
      inversePrimary: Color(4288599196),
      primaryFixed: Color(4290441399),
      onPrimaryFixed: Color(4278198534),
      primaryFixedDim: Color(4288599196),
      onPrimaryFixedVariant: Color(4280307750),
      secondaryFixed: Color(4292208848),
      onSecondaryFixed: Color(4279246608),
      secondaryFixedDim: Color(4290366644),
      onSecondaryFixedVariant: Color(4282010425),
      tertiaryFixed: Color(4294957538),
      onTertiaryFixed: Color(4281992989),
      tertiaryFixedDim: Color(4294947272),
      onTertiaryFixedVariant: Color(4285543240),
      surfaceDim: Color(4292336595),
      surfaceBright: Color(4294441970),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294047212),
      surfaceContainer: Color(4293652454),
      surfaceContainerHigh: Color(4293323233),
      surfaceContainerHighest: Color(4292928731),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4280044578),
      surfaceTint: Color(4281952572),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4283400272),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281812789),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4285036901),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4285214532),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4289027958),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294441970),
      onSurface: Color(4279770391),
      onSurfaceVariant: Color(4282271036),
      outline: Color(4284113240),
      outlineVariant: Color(4285955443),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281152044),
      inversePrimary: Color(4288599196),
      primaryFixed: Color(4283400272),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4281755193),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4285036901),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4283392077),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4289027958),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4287186782),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292336595),
      surfaceBright: Color(4294441970),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294047212),
      surfaceContainer: Color(4293652454),
      surfaceContainerHigh: Color(4293323233),
      surfaceContainerHighest: Color(4292928731),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278200585),
      surfaceTint: Color(4281952572),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4280044578),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4279641622),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4281812789),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4282519076),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4285214532),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294441970),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280231454),
      outline: Color(4282271036),
      outlineVariant: Color(4282271036),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281152044),
      inversePrimary: Color(4291033792),
      primaryFixed: Color(4280044578),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278269198),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4281812789),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4280365344),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4285214532),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4283439406),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292336595),
      surfaceBright: Color(4294441970),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294047212),
      surfaceContainer: Color(4293652454),
      surfaceContainerHigh: Color(4293323233),
      surfaceContainerHighest: Color(4292928731),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4288599196),
      surfaceTint: Color(4288599196),
      onPrimary: Color(4278532369),
      primaryContainer: Color(4280307750),
      onPrimaryContainer: Color(4290441399),
      secondary: Color(4290366644),
      onSecondary: Color(4280562724),
      secondaryContainer: Color(4282010425),
      onSecondaryContainer: Color(4292208848),
      tertiary: Color(4294947272),
      onTertiary: Color(4283702578),
      tertiaryContainer: Color(4285543240),
      onTertiaryContainer: Color(4294957538),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279243792),
      onSurface: Color(4292928731),
      onSurfaceVariant: Color(4290955709),
      outline: Color(4287402888),
      outlineVariant: Color(4282534208),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292928731),
      inversePrimary: Color(4281952572),
      primaryFixed: Color(4290441399),
      onPrimaryFixed: Color(4278198534),
      primaryFixedDim: Color(4288599196),
      onPrimaryFixedVariant: Color(4280307750),
      secondaryFixed: Color(4292208848),
      onSecondaryFixed: Color(4279246608),
      secondaryFixedDim: Color(4290366644),
      onSecondaryFixedVariant: Color(4282010425),
      tertiaryFixed: Color(4294957538),
      onTertiaryFixed: Color(4281992989),
      tertiaryFixedDim: Color(4294947272),
      onTertiaryFixedVariant: Color(4285543240),
      surfaceDim: Color(4279243792),
      surfaceBright: Color(4281743924),
      surfaceContainerLowest: Color(4278914826),
      surfaceContainerLow: Color(4279770391),
      surfaceContainer: Color(4280033563),
      surfaceContainerHigh: Color(4280757030),
      surfaceContainerHighest: Color(4281415216),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4288927904),
      surfaceTint: Color(4288599196),
      onPrimary: Color(4278196996),
      primaryContainer: Color(4285177194),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4290629817),
      onSecondary: Color(4278852107),
      secondaryContainer: Color(4286813824),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294948812),
      onTertiary: Color(4281532952),
      tertiaryContainer: Color(4291197842),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279243792),
      onSurface: Color(4294507763),
      onSurfaceVariant: Color(4291218881),
      outline: Color(4288587162),
      outlineVariant: Color(4286481787),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292928731),
      inversePrimary: Color(4280439335),
      primaryFixed: Color(4290441399),
      onPrimaryFixed: Color(4278195715),
      primaryFixedDim: Color(4288599196),
      onPrimaryFixedVariant: Color(4279058199),
      secondaryFixed: Color(4292208848),
      onSecondaryFixed: Color(4278588423),
      secondaryFixedDim: Color(4290366644),
      onSecondaryFixedVariant: Color(4280957481),
      tertiaryFixed: Color(4294957538),
      onTertiaryFixed: Color(4281008146),
      tertiaryFixedDim: Color(4294947272),
      onTertiaryFixedVariant: Color(4284162616),
      surfaceDim: Color(4279243792),
      surfaceBright: Color(4281743924),
      surfaceContainerLowest: Color(4278914826),
      surfaceContainerLow: Color(4279770391),
      surfaceContainer: Color(4280033563),
      surfaceContainerHigh: Color(4280757030),
      surfaceContainerHighest: Color(4281415216),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4293984235),
      surfaceTint: Color(4288599196),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4288927904),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4293984235),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4290629817),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294965753),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4294948812),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279243792),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294376945),
      outline: Color(4291218881),
      outlineVariant: Color(4291218881),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292928731),
      inversePrimary: Color(4278202892),
      primaryFixed: Color(4290704827),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4288927904),
      onPrimaryFixedVariant: Color(4278196996),
      secondaryFixed: Color(4292472020),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4290629817),
      onSecondaryFixedVariant: Color(4278852107),
      tertiaryFixed: Color(4294959078),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4294948812),
      onTertiaryFixedVariant: Color(4281532952),
      surfaceDim: Color(4279243792),
      surfaceBright: Color(4281743924),
      surfaceContainerLowest: Color(4278914826),
      surfaceContainerLow: Color(4279770391),
      surfaceContainer: Color(4280033563),
      surfaceContainerHigh: Color(4280757030),
      surfaceContainerHighest: Color(4281415216),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
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

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
