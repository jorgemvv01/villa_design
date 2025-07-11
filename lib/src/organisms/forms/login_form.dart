import 'package:flutter/material.dart';
import 'package:villa_design/villa_design.dart';

/// An organism that provides a controlled login form structure.
///
/// This widget receives [TextEditingController]s from the parent, allowing
/// the parent widget to have full control over the form's state.
class VillaLoginForm extends StatelessWidget {
  /// The controller for the email input field.
  final TextEditingController emailController;

  /// The controller for the password input field.
  final TextEditingController passwordController;

  /// The callback for the submit button. The parent is responsible for reading the controllers.
  final VoidCallback? onSubmit;

  /// A flag to show a loading state on the submit button.
  final bool isLoading;

  /// Creates a [VillaLoginForm].
  ///
  /// The [emailController] and [passwordController] parameters are required.
  const VillaLoginForm({
    super.key,
    required this.emailController,
    required this.passwordController,
    this.onSubmit,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        VillaTextField(
          controller: emailController,
          labelText: 'Email',
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 16),
        VillaTextField(
          controller: passwordController,
          labelText: 'Password',
          obscureText: true,
        ),
        const SizedBox(height: 24),
        VillaElevatedButton(
          text: 'Login',
          isLoading: isLoading,
          onPressed: onSubmit,
        ),
      ],
    );
  }
}