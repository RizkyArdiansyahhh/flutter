import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit(this.intState) : super(intState);

  final int intState;

  void increment() {
    emit(state + 1);
  }

  void decrement() {
    emit(state + 1);
  }
}

class Cubitpage extends StatelessWidget {
  CounterCubit counterCubit = CounterCubit(50);

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
            StreamBuilder<int>(
                initialData: counterCubit.intState,
                stream: counterCubit.stream,
                builder: (context, snapshot) {
                  return Text("${snapshot.data}");
                }),
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
