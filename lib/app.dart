import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter/bloc/themeBloc.dart';
import 'package:learn_flutter/pages/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Themebloc, bool>(
      builder: (context, state) {
        return MaterialApp(
          theme: (state) ? ThemeData.light() : ThemeData.dark(),
          debugShowCheckedModeBanner: false,
          home: const HomePage(),
        );
      },
    );
  }
}
