import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter/bloc/counterBloc.dart';
import 'package:learn_flutter/bloc/themeBloc.dart';
import 'package:learn_flutter/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Themebloc(),
      child: BlocBuilder<Themebloc, bool>(
        builder: (context, state) {
          return MaterialApp(
            theme: (state) ? ThemeData.light() : ThemeData.dark(),
            debugShowCheckedModeBanner: false,
            home: BlocProvider(
              create: (context) => Counterbloc(),
              child: const HomePage(),
            ),
          );
        },
      ),
    );
  }
}
