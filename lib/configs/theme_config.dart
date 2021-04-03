import 'package:flutter/material.dart';
import 'package:write_story/constants/config_constant.dart';

class ThemeConfig {
  static final ThemeData dark = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: darkScheme,
    scaffoldBackgroundColor: darkScheme.background,
    disabledColor: darkScheme.onSurface.withOpacity(0.2),
    splashColor: Colors.transparent,
    primaryColor: darkScheme.primary,
    iconTheme: IconThemeData(color: darkScheme.onSurface),
    accentColor: darkScheme.onSurface,
    toggleableActiveColor: darkScheme.primary,
    canvasColor: darkScheme.background,
    textTheme: textTheme.apply(
      bodyColor: darkScheme.onSurface,
      displayColor: darkScheme.onSurface,
      decorationColor: darkScheme.onSurface,
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: ConfigConstant.circlarRadius1,
          ),
        ),
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.pressed) ||
                states.contains(MaterialState.focused) ||
                states.contains(MaterialState.hovered) ||
                states.contains(MaterialState.selected)) {
              return darkScheme.primary.withOpacity(0.1);
            } else {
              return Colors.transparent;
            }
          },
        ),
        foregroundColor: MaterialStateProperty.all(darkScheme.primary),
      ),
    ),
  );

  static final ThemeData light = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: lightScheme,
    scaffoldBackgroundColor: lightScheme.background,
    disabledColor: lightScheme.onSurface.withOpacity(0.2),
    splashColor: Colors.transparent,
    primaryColor: lightScheme.primary,
    iconTheme: IconThemeData(color: lightScheme.onSurface),
    accentColor: lightScheme.onSurface,
    canvasColor: lightScheme.background,
    textTheme: textTheme.apply(
      bodyColor: lightScheme.onSurface,
      displayColor: lightScheme.onSurface,
      decorationColor: lightScheme.onSurface,
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: ConfigConstant.circlarRadius1,
          ),
        ),
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.pressed) ||
                states.contains(MaterialState.focused) ||
                states.contains(MaterialState.hovered) ||
                states.contains(MaterialState.selected)) {
              return lightScheme.primary.withOpacity(0.1);
            } else {
              return Colors.transparent;
            }
          },
        ),
        foregroundColor: MaterialStateProperty.all(lightScheme.primary),
      ),
    ),
  );

  static final ColorScheme lightScheme = ColorScheme(
    background: Color(0xFFF6F6F6),
    surface: Color(0xFFFFFFFF),
    primary: Color(0xFF0E4DA4),
    secondary: Color(0xFF1E1E1E),
    onBackground: Color(0xFF1E1E1E),
    onSurface: Color(0xFF1E1E1E),
    onPrimary: Color(0xFFFFFFFF),
    onSecondary: Color(0xFFFFFFFF),
    primaryVariant: Color(0xFF002674),
    secondaryVariant: Color(0xFF000000),
    error: Color(0xFFE74C3C),
    onError: Color(0xFFFFFFFF),
    brightness: Brightness.light,
  );

  static Color lighten(Color color, [double amount = 0.2]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(color);
    final hslLight =
        hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

    return hslLight.toColor();
  }

  static final ColorScheme darkScheme = ColorScheme(
    background: Color(0xFF121212),
    surface: Color(0xFF1E1E1E),
    primary: Color(0xFFE74C3C),
    secondary: Color(0xFFFFFFFF),
    onBackground: Color(0xFFFFFFFF),
    onSurface: Color(0xFFFFFFFF),
    onPrimary: Color(0xFFFFFFFF),
    onSecondary: Color(0xFF1E1E1E),
    primaryVariant: Color(0xFFAE0C13),
    secondaryVariant: Color(0xFFCCCCCC),
    error: Color(0xFFE74C3C),
    onError: Color(0xFFFFFFFF),
    brightness: Brightness.dark,
  );

  static TextTheme get textTheme {
    final fontFamilyFallback = ["Quicksand", "Kantumruy"];
    return TextTheme(
      headline1: TextStyle(
        fontSize: 98,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
        fontFamilyFallback: fontFamilyFallback,
      ),
      headline2: TextStyle(
        fontSize: 61,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
        fontFamilyFallback: fontFamilyFallback,
      ),
      headline3: TextStyle(
        fontSize: 49,
        fontWeight: FontWeight.w400,
        fontFamilyFallback: fontFamilyFallback,
      ),
      headline4: TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        fontFamilyFallback: fontFamilyFallback,
      ),
      headline5: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        fontFamilyFallback: fontFamilyFallback,
      ),
      headline6: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
        fontFamilyFallback: fontFamilyFallback,
      ),
      subtitle1: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
        fontFamilyFallback: fontFamilyFallback,
      ),
      subtitle2: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        fontFamilyFallback: fontFamilyFallback,
      ),
      bodyText1: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
        fontFamilyFallback: fontFamilyFallback,
      ),
      bodyText2: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        fontFamilyFallback: fontFamilyFallback,
      ),
      button: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
        fontFamilyFallback: fontFamilyFallback,
      ),
      caption: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
        fontFamilyFallback: fontFamilyFallback,
      ),
      overline: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5,
        fontFamilyFallback: fontFamilyFallback,
      ),
    );
  }
}
