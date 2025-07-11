import 'package:flutter/material.dart';
import 'package:villa_design/src/tokens/colors.dart';
import 'package:villa_design/src/tokens/typography.dart';

/// The primary button of the application, used for major actions.
///
/// This button has a solid background color and is designed to stand out.
/// It should be used for critical actions like "Save", "Submit", or "Confirm".
class VillaElevatedButton extends StatelessWidget {
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

  /// Creates a [VillaElevatedButton].
  ///
  /// The [text] parameter is required.
  const VillaElevatedButton({
    super.key,
    required this.text,
    this.onPressed,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    final colors = VillaColors(Theme.of(context).brightness);
    final typography = VillaTypography(colors);

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: colors.primary,
        foregroundColor: colors.surface,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        elevation: 2,
      ),
      onPressed: isLoading ? null : onPressed,
      child: isLoading
        ? const SizedBox(
            width: 24,
            height: 24,
            child: CircularProgressIndicator(
              strokeWidth: 2.5,
              color: Colors.white,
            ),
          )
        : Text(
            text,
            style: typography.button.copyWith(color: colors.surface),
          ),
    );
  }
}