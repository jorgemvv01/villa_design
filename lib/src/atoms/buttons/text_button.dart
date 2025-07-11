import 'package:flutter/material.dart';
import 'package:villa_design/src/tokens/colors.dart';
import 'package:villa_design/src/tokens/typography.dart';

/// A text-only button used for secondary actions that require less emphasis.
///
/// This button has no background fill and is typically used for actions
/// like "Cancel", "Dismiss", or other non-critical options.
class VillaTextButton extends StatelessWidget {
  /// The text to display on the button.
  final String text;

  /// The callback that is called when the button is tapped.
  ///
  /// If null, the button will be disabled.
  final VoidCallback? onPressed;

  /// A flag to show a loading spinner and disable the button.
  ///
  /// Defaults to `false`.
  final bool isLoading;

  /// Creates a [VillaTextButton].
  /// 
  /// The [text] parameters is required.
  const VillaTextButton({
    super.key,
    required this.text,
    this.onPressed,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    final colors = VillaColors(Theme.of(context).brightness);
    final typography = VillaTypography(colors);

    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: colors.primary,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      onPressed: isLoading ? null : onPressed,
      child: isLoading
        ? SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(
              strokeWidth: 2.5,
              color: colors.primary,
            ),
          )
        : Text(
            text,
            style: typography.button.copyWith(color: colors.primary),
          ),
    );
  }
}