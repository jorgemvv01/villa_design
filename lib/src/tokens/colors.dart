import 'package:flutter/material.dart';

/// Defines the color palette (tokens) for the design system.
///
/// This abstract class provides a theme-aware set of colors via its factory
/// constructor, which returns the appropriate colors for either a light or dark theme.
abstract class VillaColors {
  /// Provides a theme-aware instance of [VillaColors].
  ///
  /// Returns the appropriate color set based on the provided [brightness].
  factory VillaColors(Brightness brightness) {
    if (brightness == Brightness.dark) {
      return _darkColors;
    }
    return _lightColors;
  }

  static final VillaColors _lightColors = _AppColorsLight();
  static final VillaColors _darkColors = _AppColorsDark();

  /// The primary brand color, used for key actions and components.
  Color get primary;

  /// The secondary accent color, used for highlights and floating action buttons.
  Color get secondary;

  /// The main background color for screens.
  Color get background;

  /// The background color for elevated elements like cards, dialogs, and menus.
  Color get surface;

  /// The color for primary text, such as headlines and titles.
  Color get textPrimary;

  /// The color for secondary text, like subtitles, captions, and descriptions.
  Color get textSecondary;

  /// The color for borders, dividers, and outlines.
  Color get outline;

  /// The color used to indicate errors or destructive actions.
  Color get error;

  /// The color used to indicate success states or positive feedback.
  Color get success;
}

/// The concrete implementation of the light theme color palette.
class _AppColorsLight implements VillaColors {
  @override
  Color get primary => const Color(0xFF4A5AEF);
  @override
  Color get secondary => const Color(0xFFF9A826);
  @override
  Color get background => const Color(0xFFF7F7FA);
  @override
  Color get surface => const Color(0xFFFFFFFF);
  @override
  Color get textPrimary => const Color(0xFF1C1C21);
  @override
  Color get textSecondary => const Color(0xFF6E6D7A);
  @override
  Color get outline => const Color(0xFFE0E0E0);
  @override
  Color get error => const Color(0xFFE53935);
  @override
  Color get success => const Color(0xFF43A047);
}

/// The concrete implementation of the dark theme color palette.
class _AppColorsDark implements VillaColors {
  @override
  Color get primary => const Color(0xFF5C67F2);
  @override
  Color get secondary => const Color(0xFFFFB74D);
  @override
  Color get background => const Color(0xFF121212);
  @override
  Color get surface => const Color(0xFF1E1E1E);
  @override
  Color get textPrimary => const Color(0xFFF5F5F5);
  @override
  Color get textSecondary => const Color(0xFF9E9E9E);
  @override
  Color get outline => const Color(0xFF424242);
  @override
  Color get error => const Color(0xFFEF5350);
  @override
  Color get success => const Color(0xFF66BB6A);
}