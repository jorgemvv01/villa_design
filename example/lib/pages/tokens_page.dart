import 'package:flutter/material.dart';
import 'package:villa_design/villa_design.dart';

class TokensPage extends StatelessWidget {
  const TokensPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = VillaColors(Theme.of(context).brightness);
    final typography = VillaTypography(colors);

    return Scaffold(
      appBar: const VillaHeader(title: 'Tokens'),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Text('Colors', style: typography.h2),
          const SizedBox(height: 16),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: [
              _ColorChip(color: colors.primary, name: 'Primary'),
              _ColorChip(color: colors.secondary, name: 'Secondary'),
              _ColorChip(color: colors.background, name: 'Background'),
              _ColorChip(color: colors.surface, name: 'Surface'),
              _ColorChip(color: colors.textPrimary, name: 'Text primary'),
              _ColorChip(color: colors.textSecondary, name: 'Text secondary'),
              _ColorChip(color: colors.outline, name: 'Outline'),
              _ColorChip(color: colors.error, name: 'Error'),
              _ColorChip(color: colors.success, name: 'Success'),
            ],
          ),
          const Divider(height: 48),

          Text('Typography', style: typography.h2),
          const SizedBox(height: 16),
          Text('This is h1', style: typography.h1),
          const SizedBox(height: 8),
          Text('This is h2', style: typography.h2),
          const SizedBox(height: 8),
          Text('This is h3', style: typography.h3),
          const SizedBox(height: 8),
          Text('This is body large', style: typography.bodyLarge),
          const SizedBox(height: 8),
          Text('This is body', style: typography.body),
          const SizedBox(height: 8),
          Text('This is caption', style: typography.caption),
          const SizedBox(height: 8),
          Text('This is button text', style: typography.button),
        ],
      ),
    );
  }
}

class _ColorChip extends StatelessWidget {
  final Color color;
  final String name;
  const _ColorChip({required this.color, required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 20,
          child: CircleAvatar(
            radius: 19,
            backgroundColor: color,
            foregroundColor: Colors.black,
            child: CircleAvatar(radius: 18, backgroundColor: color),
          ),
        ),
        const SizedBox(width: 8),
        Text(name),
      ],
    );
  }
}