import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter/app.dart';
import 'package:learn_flutter/bloc/counterBloc.dart';
import 'package:learn_flutter/bloc/themeBloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => Themebloc(),
      ),
      BlocProvider(
        create: (context) => Counterbloc(),
      ),
    ], child: App());
  }
}
