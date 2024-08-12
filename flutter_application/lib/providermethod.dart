
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// 2. Counter using Provider
class CounterProvider with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}

class CounterProviderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterProvider>(context);

    return Column(
      children: [
        Text("Provider Counter: ${counter.count}"),
        ElevatedButton(
          onPressed: counter.increment,
          child: const Text("Increment", style: TextStyle(color: Colors.green),),
        ),
      ],
    );
  }
}
