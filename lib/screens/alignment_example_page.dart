import 'package:flutter/material.dart';

import '../models/alignment_example.dart';

class AlignmentExamplePage extends StatefulWidget {
  const AlignmentExamplePage({super.key, required this.example});

  final AlignmentExample example;

  @override
  State<AlignmentExamplePage> createState() => _AlignmentExamplePageState();
}

class _AlignmentExamplePageState extends State<AlignmentExamplePage> {
  bool _showRow = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LUSTRE_TASK 5'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 20, 16, 8),
            child: Text(
              widget.example.title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: SegmentedButton<bool>(
              segments: const [
                ButtonSegment(value: true, label: Text('Row')),
                ButtonSegment(value: false, label: Text('Column')),
              ],
              selected: {_showRow},
              onSelectionChanged: (selection) {
                setState(() {
                  _showRow = selection.first;
                });
              },
            ),
          ),
          Expanded(
            child: ColoredBox(
              color: const Color(0xFFFFF7FF),
              child: SizedBox.expand(
                child: _showRow ? _buildRow() : _buildColumn(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRow() {
    return Row(
      mainAxisAlignment: widget.example.mainAxisAlignment,
      crossAxisAlignment: widget.example.crossAxisAlignment,
      textBaseline: TextBaseline.alphabetic,
      children: _buildBoxes(),
    );
  }

  Widget _buildColumn() {
    return Column(
      mainAxisAlignment: widget.example.mainAxisAlignment,
      crossAxisAlignment: widget.example.crossAxisAlignment,
      textBaseline: TextBaseline.alphabetic,
      children: _buildBoxes(),
    );
  }

  List<Widget> _buildBoxes() {
    final showBaselineText =
        widget.example.crossAxisAlignment == CrossAxisAlignment.baseline;

    return [
      _buildBox(
        width: 90,
        height: 90,
        color: Colors.red,
        label: 'RED',
        showLabel: showBaselineText,
      ),
      _buildBox(
        width: 80,
        height: 80,
        color: Colors.yellow,
        label: 'YELLOW',
        showLabel: showBaselineText,
      ),
      _buildBox(
        width: 70,
        height: 70,
        color: Colors.blue,
        label: 'BLUE',
        showLabel: showBaselineText,
      ),
    ];
  }

  Widget _buildBox({
    required double width,
    required double height,
    required Color color,
    required String label,
    required bool showLabel,
  }) {
    return Container(
      width: width,
      height: height,
      color: color,
      alignment: Alignment.center,
      child: showLabel
          ? Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            )
          : null,
    );
  }
}
