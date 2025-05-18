import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter/widgets/data_widget.dart';
import 'cubitPage.dart';

class ProviderPage extends StatelessWidget {
  const ProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Provider"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blueAccent,
                child: InkWell(
                  onTap: () {
                    BlocProvider.of<CounterCubit>(context).increment();
                  },
                  child: const SizedBox(
                    width: 70,
                    height: 100,
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              DataWidget(),
              Material(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blueAccent,
                child: InkWell(
                  onTap: () {
                    BlocProvider.of<CounterCubit>(context).decrement();
                  },
                  child: const SizedBox(
                    width: 70,
                    height: 100,
                    child: Center(
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
