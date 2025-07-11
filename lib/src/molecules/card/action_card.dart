import 'package:flutter/material.dart';
import 'package:villa_design/villa_design.dart';

/// A card molecule that displays content and an optional action button.
///
/// This component is used to group related information in a visually distinct
/// container, with a clear title, description, and a primary call-to-action.
class VillaActionCard extends StatelessWidget {
  /// The main title displayed at the top of the card.
  final String title;

  /// The main content or body text of the card.
  final String description;

  /// The text for the action button. If null or empty, the button is not displayed.
  final String? actionText;

  /// The callback that is called when the action button is tapped.
  final VoidCallback? onActionPressed;

  /// The internal padding of the card. Defaults to 16.0 on all sides.
  final EdgeInsets? padding;

  /// The border radius of the card's corners. Defaults to a circular radius of 8.0.
  final BorderRadius? borderRadius;

  /// The background color of the card. Defaults to the surface color from the design system.
  final Color? color;

  /// The shadow elevation of the card. Defaults to 1.0.
  final double? elevation;

  /// Creates a [VillaActionCard].
  ///
  /// The [title] and [description] parameters are required.
  const VillaActionCard({
    super.key,
    required this.title,
    required this.description,
    this.actionText,
    this.onActionPressed,
    this.padding = const EdgeInsets.all(16.0),
    this.borderRadius = const BorderRadius.all(Radius.circular(8.0)),
    this.color,
    this.elevation = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    final colors = VillaColors(Theme.of(context).brightness);
    final typography = VillaTypography(colors);

    return Material(
      elevation: elevation!,
      borderRadius: borderRadius!,
      color: color ?? colors.surface,
      child: Padding(
        padding: padding!,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: typography.h3,
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: typography.body,
            ),
            if (actionText != null && actionText!.isNotEmpty) ...[
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.centerRight,
                child: VillaElevatedButton(
                  text: actionText!,
                  onPressed: onActionPressed,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}