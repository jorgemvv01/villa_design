import 'package:flutter/material.dart';
import 'package:villa_design/src/tokens/colors.dart';

/// Defines the typographic scale (text styles) for the design system.
///
/// This class provides a set of pre-configured [TextStyle]s. It depends on
/// an instance of [VillaColors] to ensure that text colors adapt correctly
/// to the current theme (light or dark).
class VillaTypography {
  /// An instance of [VillaColors] used to apply the correct text colors.
  final VillaColors colors;

  /// Creates a set of typography styles.
  ///
  /// The [colors] parameter is required to ensure styles are theme-aware.
  VillaTypography(this.colors);

  /// Style for major page titles. Use sparingly.
  TextStyle get h1 => TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: colors.textPrimary,
  );

  /// Style for section titles.
  TextStyle get h2 => TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: colors.textPrimary,
  );
  
  /// Style for subsection titles and large card titles.
  TextStyle get h3 => TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: colors.textPrimary,
  );

  /// Style for prominent body text that needs emphasis.
  TextStyle get bodyLarge => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: colors.textPrimary,
  );

  /// The default style for standard body text and paragraphs.
  TextStyle get body => TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: colors.textSecondary,
  );

  /// Style for small, secondary text, such as captions or metadata.
  TextStyle get caption => TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: colors.textSecondary,
  );

  /// The default text style for buttons.
  TextStyle get button => TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: colors.textPrimary,
  );
}