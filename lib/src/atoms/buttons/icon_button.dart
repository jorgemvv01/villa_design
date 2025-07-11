import 'package:flutter/material.dart';
import 'package:villa_design/src/tokens/colors.dart';

/// An atomic button that displays a tappable icon.
///
/// This widget ensures all icon-based actions have a consistent size,
/// tap area, and tooltip for accessibility.
class VillaIconButton extends StatelessWidget {
  /// The icon to be displayed inside the button.
  final IconData icon;

  /// The callback that is called when the button is tapped.
  final VoidCallback? onPressed;

  /// The text to display in a tooltip when the user hovers over the button.
  ///
  /// This is highly recommended for accessibility.
  final String? tooltip;

  /// An optional color override for the icon.
  ///
  /// If null, it defaults to the secondary text color from the design system.
  final Color? color;

  /// The size of the icon in logical pixels.
  ///
  /// Defaults to 24.0.
  final double? size;

  /// Creates a [VillaIconButton].
  ///
  /// The [icon] and [onPressed] parameters are required.
  const VillaIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.tooltip,
    this.color,
    this.size = 24.0,
  });

  @override
  Widget build(BuildContext context) {
    final systemColors = VillaColors(Theme.of(context).brightness);

    return IconButton(
      tooltip: tooltip,
      iconSize: size,
      padding: const EdgeInsets.all(12.0),
      splashRadius: 24.0,
      icon: Icon(
        icon,
        color: color ?? systemColors.textSecondary,
      ),
      onPressed: onPressed,
    );
  }
}