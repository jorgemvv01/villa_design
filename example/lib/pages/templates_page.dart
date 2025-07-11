import 'package:flutter/material.dart';
import 'package:villa_design/villa_design.dart';

class TemplatesPage extends StatelessWidget {
  const TemplatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VillaHeader(title: 'Templates'),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SizedBox(height: 16),

          VillaElevatedButton(
            text: 'Show VillaPageTemplate',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const VillaPageTemplate(
                      appBar: VillaHeader(title: 'Page template example'),
                      body: Center(
                        child: Text('This is the body passed to the template.'),
                      ),
                    );
                  },
                ),
              );
            },
          ),
          const SizedBox(height: 16),
          
          VillaElevatedButton(
            text: 'Show VillaFormTemplate',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const _FormExamplePage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _FormExamplePage extends StatefulWidget {
  const _FormExamplePage();
  @override
  State<_FormExamplePage> createState() => _FormExamplePageState();
}

class _FormExamplePageState extends State<_FormExamplePage> {
  @override
  Widget build(BuildContext context) {
    return VillaFormTemplate(
      header: const VillaHeader(title: 'Form template example'),
      formFields: const [
        VillaTextField(labelText: 'Example field 1'),
        SizedBox(height: 16),
        VillaTextField(labelText: 'Example field 2'),
      ],
      primaryActionText: 'Submit',
      onPrimaryAction: () {},
    );
  }
}