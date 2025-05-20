import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter/bloc/user_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final UserBloc userBloc = context.read<UserBloc>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aplikasi Saya"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocSelector<UserBloc, Map<String, dynamic>, String>(
              selector: (state) => state["nama"],
              builder: (context, state) {
                log("REBUILD NAMA");
                return Text(
                  "Nama : $state",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),
            BlocSelector<UserBloc, Map<String, dynamic>, int>(
              selector: (state) => state["umur"],
              builder: (context, state) {
                log("REBUILD UMUR");
                return Text(
                  "Umur : $state",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),
            // BlocBuilder<UserBloc, Map<String, dynamic>>(
            //   builder: (context, state) {
            //     log("REBUILD NAMA");
            //     return Text(
            //       "Nama : ${state['nama']}",
            //       style: const TextStyle(
            //         fontSize: 20,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     );
            //   },
            // ),
            // BlocBuilder<UserBloc, Map<String, dynamic>>(
            //   builder: (context, state) {
            //     log("REBUILD UMUR");
            //     return Text(
            //       "Umur : ${state['umur']}",
            //       style: const TextStyle(
            //         fontSize: 20,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     );
            //   },
            // ),
            TextField(
              onChanged: (value) => userBloc.changedName(value),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {
                      userBloc.changedUmur(userBloc.state["umur"] - 1);
                    },
                    icon: const Icon(Icons.remove)),
                IconButton(
                    onPressed: () {
                      userBloc.changedUmur(userBloc.state["umur"] + 1);
                    },
                    icon: const Icon(Icons.add)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
