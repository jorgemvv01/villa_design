import 'package:flutter/material.dart';
import 'package:villa_design/villa_design.dart';

class MoleculesPage extends StatelessWidget {
  const MoleculesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VillaHeader(title: 'Molecules'),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text('Action card:'),
          VillaActionCard(
            title: const Text('Card title'),
            description: const Text('This is the description for the molecule.'),
            actionText: 'Action',
            onActionPressed: () {},
          ),
          const Divider(height: 32),
          const Text('User profile:'),
          VillaUserProfile(
            initials: 'JD',
            name: 'John Doe',
            subtitle: 'john.doe@email.com',
            onTap: () {},
          ),
          const Divider(height: 32),
          const Text('Search bar:'),
          VillaSearchBar(onSearchPressed: () {}),
        ],
      ),
    );
  }
}