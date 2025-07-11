import 'package:flutter/material.dart';
import 'package:villa_design/villa_design.dart';

/// A search bar molecule that combines a text field with a search icon button.
///
/// This component is designed to capture user input for search queries.
class VillaSearchBar extends StatelessWidget {
  /// An optional controller to manage the text in the search field.
  final TextEditingController? controller;

  /// The placeholder text to display when the search field is empty.
  ///
  /// Defaults to 'Buscar...'.
  final String? hintText;

  /// The callback that is triggered when the search icon button is tapped.
  final VoidCallback? onSearchPressed;

  /// A callback that fires whenever the text in the search field changes.
  final ValueChanged<String>? onChanged;

  /// Creates a [VillaSearchBar].
  const VillaSearchBar({
    super.key,
    this.controller,
    this.hintText = 'Search...',
    this.onSearchPressed,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final colors = VillaColors(Theme.of(context).brightness);

    return VillaTextField(
      controller: controller,
      hintText: hintText,
      onChanged: onChanged,
      suffixIcon: VillaIconButton(
        icon: Icons.search,
        tooltip: 'Search',
        color: colors.primary,
        onPressed: onSearchPressed,
      ),
    );
  }
}