import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit({this.intState = 0}) : super(intState);

  final int intState;

  void increment() {
    emit(state + 1);
  }

  void decrement() {
    emit(state + 1);
  }

// Memantau perubahan data
  @override
  void onChange(Change<int> change) {
    // TODO: implement onChange
    log("$change");
  }

  // Memantau Error
  @override
  void onError(Object error, StackTrace stackTrace) {
    // TODO: implement onError
    log("$error");
  }
}

class Cubitpage extends StatelessWidget {
  CounterCubit counterCubit = CounterCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cubit"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterCubit, int>(
              buildWhen: (previous, current) {
                return current % 2 == 0;
              },
              bloc: counterCubit,
              builder: (context, state) {
                return Text("$state");
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {
                      counterCubit.decrement();
                    },
                    icon: const Icon(Icons.remove)),
                IconButton(
                    onPressed: () {
                      counterCubit.increment();
                    },
                    icon: const Icon(Icons.add))
              ],
            )
          ],
        ),
      ),
    );
  }
}
