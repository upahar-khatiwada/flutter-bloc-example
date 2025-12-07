import 'package:bloc_learn/bloc_stuff/blocs/counter_event.dart';
import 'package:bloc_learn/bloc_stuff/blocs/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<CounterIncrementEvent>((event, emit) {
      emit(CounterState(counter: state.counter + 1));
    });

    on<CounterDecrementEvent>((event, emit) {
      emit(CounterState(counter: state.counter - 1));
    });
  }
}
