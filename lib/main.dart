import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:starter_project/di/dependency.dart';
import 'package:starter_project/presentation/screens/main_screen.dart';

import 'presentation/bloc/main_bloc.dart';

void main() async {
  await Injections().initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Starter Project',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => MainBloc(repository: sl())..add(GetProductList()),
        child: MainScreen(),
      ),
    );
  }
}
