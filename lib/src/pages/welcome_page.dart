import 'package:flutter/material.dart';
import 'package:villa_design/villa_design.dart';

/// An example page that demonstrates how to use a [VillaPageTemplate].
///
/// This page represents a concrete implementation of a template, showing how
/// to assemble organisms like [VillaHeader] and molecules like [VillaActionCard]
/// to build a complete screen.
class WelcomePage extends StatelessWidget {
  /// Creates a [WelcomePage].
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final typography = VillaTypography(VillaColors(Theme.of(context).brightness));
    
    return VillaPageTemplate(
      appBar: const VillaHeader(
        title: 'Welcome Page',
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome!', style: typography.h1),
            const SizedBox(height: 16),
            Text(
              'This is a sample page built using VillaPageTemplate.',
              style: typography.bodyLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            VillaActionCard(
              title: Text(
                'Feature Card',
                style: typography.h3
              ),
              description: Text(
                'This VillaActionCard is an example of a molecule placed within the body of the page template.',
                style: typography.body,
              ),
            ),
          ],
        ),
      ),
    );
  }
}