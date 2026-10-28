import 'package:flutter/material.dart';

import '../models/alignment_example.dart';
import 'alignment_example_page.dart';

class AlignmentHomePage extends StatelessWidget {
  const AlignmentHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LUSTRE_TASK 5'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Choose an alignment example',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Each example can be viewed using either a Row or Column.',
          ),
          const SizedBox(height: 16),
          _buildSection(context, 'MainAxisAlignment', mainAxisExamples),
          const SizedBox(height: 8),
          _buildSection(context, 'CrossAxisAlignment', crossAxisExamples),
        ],
      ),
    );
  }

  Widget _buildSection(
    BuildContext context,
    String heading,
    List<AlignmentExample> examples,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(heading, style: Theme.of(context).textTheme.titleMedium),
        ),
        ...examples.map(
          (example) => Card(
            child: ListTile(
              title: Text(example.title),
              subtitle: const Text('Row and Column'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (_) => AlignmentExamplePage(example: example),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
