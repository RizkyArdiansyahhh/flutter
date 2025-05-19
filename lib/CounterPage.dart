// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:learn_flutter/cubit/counter_cubit.dart';

// class Counterpage extends StatefulWidget {
//   const Counterpage({super.key});

//   @override
//   State<Counterpage> createState() => _CounterpageState();
// }

// class _CounterpageState extends State<Counterpage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.amber,
//         title: Text(
//           "Counter App",
//         ),
//       ),
//       body: Center(
//         child: BlocConsumer<CounterCubit, CounterState>(
//           listener: (context, state) {
//             // TODO: implement listener
//           },
//           builder: (context, state) {
//             return Text(
//               state.value.toString(),
//               style: TextStyle(
//                 fontSize: 50,
//               ),
//             );
//           },
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => context.read<CounterCubit>().increment(),
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
