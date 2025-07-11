import 'package:flutter/material.dart';
import 'package:villa_design/src/tokens/colors.dart';
import 'package:villa_design/src/tokens/typography.dart';

class VillaTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final String? errorText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final ValueChanged<String>? onChanged;

  const VillaTextField({
    super.key,
    this.controller,
    this.hintText,
    this.labelText,
    this.errorText,
    this.obscureText = false,
    this.keyboardType,
    this.suffixIcon,
    this.onChanged
  });

  @override
  Widget build(BuildContext context) {
    final colors = VillaColors(Theme.of(context).brightness);
    final typography = VillaTypography(colors);

    return TextField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      onChanged: onChanged,
      style: typography.body.copyWith(color: colors.textPrimary),
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        errorText: errorText,
        suffixIcon: suffixIcon,
        labelStyle: typography.body,
        hintStyle: typography.body.copyWith(color: colors.textSecondary),
        errorStyle: typography.caption.copyWith(color: colors.error),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: colors.outline),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: colors.primary, width: 2.0),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: colors.error),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: colors.error, width: 2.0),
        ),
      ),
    );
  }
}