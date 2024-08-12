
import 'package:flutter/material.dart';

// 1. Counter using StatefulWidget
class CounterStatefulWidget extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _CounterStatefulWidgetState createState() => _CounterStatefulWidgetState();
}

class _CounterStatefulWidgetState extends State<CounterStatefulWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("StatefulWidget Counter: $_counter"),
        ElevatedButton(
          onPressed: _incrementCounter,
          child: const Text("Increment", style: TextStyle(color: Colors.red),),
        ),
      ],
    );
  }
}