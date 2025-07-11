import 'package:flutter/material.dart';
import 'package:villa_design/src/tokens/colors.dart';

/// A generic template for application pages.
///
/// This widget provides a consistent [Scaffold] structure, allowing for
/// customization of the app bar, body, drawer, and other common page elements.
class VillaPageTemplate extends StatelessWidget {
  /// The widget to display as the app bar. A [VillaHeader] is recommended.
  final PreferredSizeWidget? appBar;

  /// The primary content of the page.
  final Widget body;

  /// An optional side menu for the page.
  final Widget? drawer;

  /// An optional floating action button to display.
  final Widget? floatingActionButton;

  /// The background color of the page.
  ///
  /// Defaults to the background color from the design system.
  final Color? backgroundColor;

  /// The padding applied to the [body] of the page.
  ///
  // Defaults to 16.0 on all sides.
  final EdgeInsets? bodyPadding;

  /// Creates a [VillaPageTemplate].
  ///
  /// The [body] parameter is required.
  const VillaPageTemplate({
    super.key,
    required this.body,
    this.appBar,
    this.drawer,
    this.floatingActionButton,
    this.backgroundColor,
    this.bodyPadding = const EdgeInsets.all(16.0),
  });

  @override
  Widget build(BuildContext context) {
    final colors = VillaColors(Theme.of(context).brightness);

    return Scaffold(
      backgroundColor: backgroundColor ?? colors.background,
      appBar: appBar,
      drawer: drawer,
      floatingActionButton: floatingActionButton,
      body: Padding(
        padding: bodyPadding!,
        child: body,
      ),
    );
  }
}