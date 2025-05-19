import 'package:flutter/material.dart';
import 'package:learn_flutter/number_card.dart';
import 'package:learn_flutter/routes/routes.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  final route = MyRoutes();

  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: route.onGenerateRoute
        // routes: {
        //   "/": (context) => BlocProvider.value(
        //         value: counterCubit,
        //         child: ProviderPage(),
        //       ),
        //   "/second": (context) =>
        //       BlocProvider.value(value: counterCubit, child: SecondPage()),
        // },

        // home: BlocProvider(
        //   create: (context) => CounterCubit(),
        //   child: ProviderPage(),
        // ),
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
