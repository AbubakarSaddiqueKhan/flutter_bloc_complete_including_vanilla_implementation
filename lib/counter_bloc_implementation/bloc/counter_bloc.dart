import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  // final CounterState _counterState = const CounterState(count: 0);
  CounterBloc() : super(const CounterState(count: 0)) {
    on<CounterEvent>((event, emit) {
      if (event is CounterIncrementEvent) {
        emit(CounterState(count: state.count + 1));
      } else if (event is CounterDecrementEvent) {
        emit(CounterState(count: state.count - 1));
      }
    });
  }
}
