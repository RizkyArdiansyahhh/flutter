import 'package:flutter/material.dart';

class StreamApp extends StatelessWidget {
  const StreamApp({super.key});

  Stream<int> countStream() async* {
    for (int i = 0; i <= 10; i++) {
      await Future.delayed(const Duration(seconds: 1));
      // if (i == 9) {
      //   throw Exception("Error");
      // }
      yield i;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stream App"),
      ),
      body: Center(
        child: StreamBuilder<int>(
            stream: countStream(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Text("Loading..", style: TextStyle(fontSize: 30));
              } else if (snapshot.hasError) {
                return const Text("Error", style: TextStyle(fontSize: 30));
              } else if (snapshot.connectionState == ConnectionState.done) {
                return const Text("Done", style: TextStyle(fontSize: 30));
              } else {
                return Text(
                  "${snapshot.data}",
                  style: const TextStyle(fontSize: 30),
                );
              }
            }),
      ),
    );
  }
}
