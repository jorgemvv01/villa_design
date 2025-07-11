import 'package:flutter/material.dart';
import 'package:villa_design/villa_design.dart';

/// A template that provides a standard layout for form-based screens.
///
/// It arranges a header, a scrollable list of form fields, and a fixed
/// action button area at the bottom. This template is designed to be used
/// by a stateful "Page" widget that supplies the form logic and state.
class VillaFormTemplate extends StatelessWidget {
  /// The header widget for the page, typically a [VillaHeader].
  final PreferredSizeWidget header;

  /// The list of widgets that make up the form fields, such as [VillaTextField]s.
  final List<Widget> formFields;

  /// The text for the main submit button (e.g., "Save").
  final String primaryActionText;

  /// The callback executed when the primary action button is tapped.
  final VoidCallback? onPrimaryAction;

  /// The optional text for a secondary action button, like "Cancel".
  /// If null, the button is not shown.
  final String? secondaryActionText;

  /// The callback for the secondary action button.
  final VoidCallback? onSecondaryAction;

  /// A flag to display a loading indicator on the primary action button.
  /// Defaults to `false`.
  final bool isLoading;

  /// Creates a [VillaFormTemplate].
  ///
  /// The [header], [formFields], and [primaryActionText] parameters are required.
  const VillaFormTemplate({
    super.key,
    required this.header,
    required this.formFields,
    required this.primaryActionText,
    this.onPrimaryAction,
    this.secondaryActionText,
    this.onSecondaryAction,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    // Uses the general page template as a base
    return VillaPageTemplate(
      appBar: header,
      // Use zero padding to allow the ListView to fill the space
      bodyPadding: EdgeInsets.zero,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // The form fields area is scrollable
            Expanded(
              child: ListView(
                padding: const EdgeInsets.only(top: 16),
                children: formFields,
              ),
            ),
            // The action button area is fixed at the bottom
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  VillaElevatedButton(
                    text: primaryActionText,
                    onPressed: onPrimaryAction,
                    isLoading: isLoading,
                  ),
                  if (secondaryActionText != null) ...[
                    const SizedBox(height: 8),
                    VillaTextButton(
                      text: secondaryActionText!,
                      onPressed: onSecondaryAction,
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}