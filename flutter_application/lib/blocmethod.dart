
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// 3. Counter using Bloc/Cubit
class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);
}

class CounterBlocWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, int>(
      builder: (context, count) {
        return Column(
          children: [
            Text("Bloc Counter: $count"),
            ElevatedButton(
              onPressed: () => context.read<CounterCubit>().increment(),
              child: const Text("Increment", style: TextStyle(color: Colors.blue),),
            ),
          ],
        );
      },
    );
  }
}