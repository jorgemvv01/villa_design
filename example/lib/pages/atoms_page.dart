import 'package:flutter/material.dart';
import 'package:villa_design/villa_design.dart';

class AtomsPage extends StatelessWidget {
  const AtomsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VillaHeader(title: 'Atoms'),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text('Buttons:'),
          Row(
            children: [
              VillaElevatedButton(text: 'Elevated', onPressed: () {}),
              const SizedBox(width: 8),
              VillaTextButton(text: 'Text', onPressed: () {}),
            ],
          ),
          const Divider(height: 32),
          const Text('Icon Button:'),
          VillaIconButton(icon: Icons.favorite, onPressed: () {}),
          const Divider(height: 32),
          const Text('Avatar:'),
          const Row(
            children: [
              VillaAvatar(initials: 'VD'),
              SizedBox(width: 8),
              VillaAvatar(imageUrl: 'https://i.pravatar.cc/150?u=a042581f4e29026704d'),
            ],
          ),
          const Divider(height: 32),
          const Text('Text Field:'),
          const VillaTextField(hintText: 'Type here...'),
        ],
      ),
    );
  }
}