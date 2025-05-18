import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter/number_card.dart';
import 'package:learn_flutter/provider_page.dart';
import 'cubitPage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ProviderPage(),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Bloc v6.1.1 Demo"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NumberCard(
                title: 'Number',
                number: 0,
              ),
              SizedBox(
                width: 40,
              ),
              NumberCard(
                title: "Watch",
                number: 0,
              ),
              SizedBox(
                width: 40,
              ),
              NumberCard(
                title: "Select",
                number: 0,
              ),
            ],
          ),
          SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green[500],
              shape: StadiumBorder(
                side: BorderSide(
                  color: Color(0xFF66BB6A),
                  width: 2,
                ),
              ),
            ),
            child: Text(
              "INCREMENT",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
