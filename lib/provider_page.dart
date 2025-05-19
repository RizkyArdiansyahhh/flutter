import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter/Other/second_page.dart';
import 'package:learn_flutter/widgets/data_widget.dart';
import 'cubitPage.dart';

class ProviderPage extends StatelessWidget {
  const ProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterCubit counterCubit = context.read<CounterCubit>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Provider"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/second");
          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //       builder: (context) => BlocProvider.value(
          //             value: counterCubit,
          //             child: SecondPage(),
          //           )),
          // );
        },
        backgroundColor: Colors.blueAccent,
        child: const Icon(
          Icons.forward,
          color: Colors.white,
        ),
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
                    counterCubit.increment();
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
                    counterCubit.decrement();
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
