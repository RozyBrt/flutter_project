
import 'package:flutter/material.dart';

class LayoutPage extends StatelessWidget {
  const LayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Text("Row 1"),
            Spacer(),
            Text("Row 2"),
          ],
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
            child: const Center(child: Text('Blue Container')),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.green,
            child: const Center(child: Text('Green Container')),
          ),
        ),
      ],
    );
  }
}
