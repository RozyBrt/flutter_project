import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'blocmethod.dart';
import 'providermethod.dart';
import 'statefulmethod.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider()),
        BlocProvider(create: (_) => CounterCubit()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("State Management Example")),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // StatefulWidget example
              CounterStatefulWidget(),
              const SizedBox(height: 20),
              // Provider example
              CounterProviderWidget(),
              const SizedBox(height: 20),
              // Bloc example
              CounterBlocWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
