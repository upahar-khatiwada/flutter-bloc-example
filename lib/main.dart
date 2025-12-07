import 'package:bloc_learn/bloc_stuff/blocs/counter_bloc.dart';
import 'package:bloc_learn/bloc_stuff/screens/bloc_parent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(create: (_) => CounterBloc(), child: MaterialApp(home: const BlocParent())));
  // runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     final CounterCubit counterCubit = context.read<CounterCubit>();
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text('You have pushed the button this many times:'),
//             BlocBuilder<CounterCubit, CounterState>(
//               bloc: counterCubit,
//               builder: (BuildContext context, state) {
//                 return Text(
//                   '${state.counter}',
//                   style: Theme.of(context).textTheme.headlineMedium,
//                 );
//               },
//             ),
//             ElevatedButton(
//               onPressed: counterCubit.decrement,
//               child: Text('Subtract button'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (_) => Parent()),
//                 );
//               },
//               child: Text('Parent Page'),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: counterCubit.increment,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
