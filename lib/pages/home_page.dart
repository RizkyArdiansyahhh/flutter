import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter/bloc/counterBloc.dart';
import 'package:learn_flutter/bloc/themeBloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      floatingActionButton: BlocBuilder<Themebloc, bool>(
        builder: (context, state) {
          return FloatingActionButton(
            backgroundColor: (state) ? Colors.black : Colors.white,
            onPressed: () {
              context.read<Themebloc>().changeMode();
            },
            child: Icon(
              (state) ? Icons.dark_mode : Icons.light_mode,
              color: (state) ? Colors.white : Colors.black,
            ),
          );
        },
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 70,
                height: 100,
                child: Material(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(20),
                  child: InkWell(
                      onTap: () {
                        context.read<Counterbloc>().remove();
                      },
                      child: const Icon(Icons.remove)),
                ),
              ),
              Container(
                width: 110,
                height: 100,
                color: Colors.blueAccent,
                child: Center(
                  child: BlocBuilder<Counterbloc, int>(
                    builder: (context, state) {
                      return Text(
                        "$state",
                        style: const TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                width: 70,
                height: 100,
                child: Material(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(20),
                  child: InkWell(
                      onTap: () {
                        context.read<Counterbloc>().add();
                      },
                      child: const Icon(Icons.add)),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
