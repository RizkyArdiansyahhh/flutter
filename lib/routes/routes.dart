import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter/404/404.dart';
import 'package:learn_flutter/Other/second_page.dart';
import 'package:learn_flutter/cubitPage.dart';
import 'package:learn_flutter/provider_page.dart';

class MyRoutes {
  final CounterCubit counterCubit = CounterCubit();

  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
            builder: (context) => BlocProvider.value(
                  value: counterCubit,
                  child: ProviderPage(),
                ));
      case "/second":
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: counterCubit,
                  child: SecondPage(),
                ));
      default:
        return MaterialPageRoute(builder: (_) => NotFoundPage());
    }
  }
}
