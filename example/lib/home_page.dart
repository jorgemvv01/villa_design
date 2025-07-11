import 'package:example/pages/molecules_page.dart';
import 'package:example/pages/organisms_page.dart';
import 'package:example/pages/templates_page.dart';
import 'package:example/pages/tokens_page.dart';
import 'package:flutter/material.dart';
import 'package:villa_design/villa_design.dart';
import 'package:example/pages/atoms_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VillaHeader(title: 'Villa design system'),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Tokens'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const TokensPage())),
          ),
          const Divider(),
          ListTile(
            title: const Text('1. Atoms'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const AtomsPage())),
          ),
          ListTile(
            title: const Text('2. Molecules'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const MoleculesPage())),
          ),
          ListTile(
            title: const Text('3. Organisms'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const OrganismsPage())),
          ),
          ListTile(
            title: const Text('4. Templates'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const TemplatesPage())),
          ),
          ListTile(
            title: const Text('5. Sample page (WelcomePage)'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const WelcomePage())),
          ),
        ],
      ),
    );
  }
}