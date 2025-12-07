import 'package:bloc_learn/bloc_stuff/blocs/counter_bloc.dart';
import 'package:bloc_learn/bloc_stuff/blocs/counter_event.dart';
import 'package:bloc_learn/bloc_stuff/blocs/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocChild extends StatefulWidget {
  const BlocChild({super.key});

  @override
  State<BlocChild> createState() => _BlocChildState();
}

class _BlocChildState extends State<BlocChild> {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = context.read<CounterBloc>();
    return Scaffold(
      appBar: AppBar(title: const Text('Bloc Child Page')),
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
