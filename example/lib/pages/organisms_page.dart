import 'package:flutter/material.dart';
import 'package:villa_design/villa_design.dart';

class OrganismsPage extends StatefulWidget {
  const OrganismsPage({super.key});

  @override
  State<OrganismsPage> createState() => _OrganismsPageState();
}

class _OrganismsPageState extends State<OrganismsPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VillaHeader(title: 'Organisms'),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text('Header:'),
          const SizedBox(height: 8),
          // Se añade el ejemplo visual del header
          const VillaHeader(
            title: 'Header title',
            actions: [
              VillaIconButton(icon: Icons.search, onPressed: null),
              VillaIconButton(icon: Icons.more_vert, onPressed: null),
            ],
          ),
          const Divider(height: 32),
          const Text('Login form:'),
          const SizedBox(height: 8),
          VillaLoginForm(
            emailController: _emailController,
            passwordController: _passwordController,
            onSubmit: () {},
          ),
        ],
      ),
    );
  }
}