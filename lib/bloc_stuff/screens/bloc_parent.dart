import 'package:bloc_learn/bloc_stuff/blocs/counter_bloc.dart';
import 'package:bloc_learn/bloc_stuff/blocs/counter_event.dart';
import 'package:bloc_learn/bloc_stuff/blocs/counter_state.dart';
import 'package:bloc_learn/bloc_stuff/screens/bloc_child.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocParent extends StatefulWidget {
  const BlocParent({super.key});

  @override
  State<BlocParent> createState() => _BlocParentState();
}

class _BlocParentState extends State<BlocParent> {
  @override
  Widget build(BuildContext context) {
    final counterBloc = context.read<CounterBloc>();
    return Scaffold(
      appBar: AppBar(title: const Text('Bloc Parent Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text('Counter Value: ${state.counter}', style: TextStyle(fontSize: 20));
              },
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    counterBloc.add(CounterDecrementEvent());
                  },
                  child: const Text(
                    'Decrement',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                const SizedBox(width: 20),
                TextButton(
                  onPressed: () {
                    counterBloc.add(CounterIncrementEvent());
                  },
                  child: const Text(
                    'Increment',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => BlocChild()),
                    );
                  },
                  child: Text('Child Page'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
