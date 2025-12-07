import 'package:bloc_learn/cubit_stuff/cubit/counter_cubit.dart';
import 'package:bloc_learn/cubit_stuff/cubit/counter_state.dart';
import 'package:bloc_learn/cubit_stuff/screens/child.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Parent extends StatefulWidget {
  const Parent({super.key});

  @override
  State<Parent> createState() => _ChildState();
}

class _ChildState extends State<Parent> {
  @override
  Widget build(BuildContext context) {
    final CounterCubit counterCubit = context.read<CounterCubit>();
    return Scaffold(
      appBar: AppBar(title: const Text('Parent Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Counter Value:', style: TextStyle(fontSize: 20)),
            const SizedBox(height: 10),
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                return Text(
                  '${state.counter}',
                  style: const TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: counterCubit.decrement,
                  child: const Text(
                    'Decrement',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                const SizedBox(width: 20),
                TextButton(
                  onPressed: counterCubit.increment,
                  child: const Text(
                    'Increment',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => Child()),
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
