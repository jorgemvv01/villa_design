import 'package:flutter/material.dart';
import 'package:villa_design/src/tokens/colors.dart';
import 'package:villa_design/src/tokens/typography.dart';

/// A custom AppBar organism that provides a consistent look and feel for page headers.
///
/// This widget should be used in the `appBar` property of a [Scaffold].
/// It implements [PreferredSizeWidget] to define a standard height.
class VillaHeader extends StatelessWidget implements PreferredSizeWidget {
  /// The primary text to display in the header.
  final String title;

  /// A list of widgets to display after the title, typically [VillaIconButton]s.
  final List<Widget>? actions;

  /// Controls whether to show the leading widget.
  ///
  /// If true, an appropriate widget will be implied, such as a back button
  /// on screens that are not at the top of the navigation stack. Defaults to `true`.
  final bool automaticallyImplyLeading;

  /// Creates a [VillaHeader].
  ///
  /// The [title] parameter is required.
  const VillaHeader({
    super.key,
    required this.title,
    this.actions,
    this.automaticallyImplyLeading = true,
  });

  @override
  Widget build(BuildContext context) {
    final colors = VillaColors(Theme.of(context).brightness);
    final typography = VillaTypography(colors);

    return AppBar(
      backgroundColor: colors.surface,
      elevation: 1.0,
      scrolledUnderElevation: 2.0,
      automaticallyImplyLeading: automaticallyImplyLeading,
      iconTheme: IconThemeData(color: colors.textPrimary),
      title: Text(
        title,
        style: typography.h3.copyWith(color: colors.textPrimary),
      ),
      actions: actions,
    );
  }

  /// The size this widget would prefer to be.
  ///
  /// Required by [PreferredSizeWidget] to give the [Scaffold] a size for the app bar.
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}