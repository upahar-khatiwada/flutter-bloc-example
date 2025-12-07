// import 'package:flutter/material.dart';

// class Child extends StatefulWidget {
//   const Child({super.key});

//   @override
//   State<Child> createState() => _ChildState();
// }

// class _ChildState extends State<Child> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Counter App')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text('Counter Value:', style: TextStyle(fontSize: 20)),
//             const SizedBox(height: 10),
//             BlocBuilder<CounterCubit, CounterState>(
//               builder: (context, state) {
//                 return Text(
//                   '${state.counter}',
//                   style: const TextStyle(
//                     fontSize: 36,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 );
//               },
//             ),
//             const SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 TextButton(
//                   onPressed: counterCubit.decrement,
//                   child: const Text(
//                     'Decrement',
//                     style: TextStyle(fontSize: 18),
//                   ),
//                 ),
//                 const SizedBox(width: 20),
//                 TextButton(
//                   onPressed: counterCubit.increment,
//                   child: const Text(
//                     'Increment',
//                     style: TextStyle(fontSize: 18),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
