// // iii ) Now make a block class that can manage or handle all of the functionalities .

// import 'dart:async';

// import 'package:flutter_bloc_practice_f12/counter_block_vanilla_implementation/events/counter_events.dart';
// import 'package:flutter_bloc_practice_f12/counter_block_vanilla_implementation/states/counter_state.dart';

// class CounterBloc {
//   // makes the constructor of the state class and initialize the initial value to it .
//   CounterState _counterState = const CounterState(counter: 0);

//   // Bloc is based on event driven and event can be used at any time . User can click on button any want's when it want's so here we use the stream's and bloc is based on the streams .

//   // Now make the controller's for both of the state and the event's .

//   final _counterStateStreamController = StreamController<CounterState>();
//   final _counterEventStreamController = StreamController<CounterEvents>();

//   // Now here we have to make the stream for both of the event's and the state .

//   // Now we have the stream of the
//   // A source of asynchronous data events.

// // A Stream provides a way to receive a sequence of events. Each event is either a data event, also called an element of the stream, or an error event, which is a notification that something has failed. When a stream has emitted all its events, a single "done" event notifies the listener that the end has been reached.
//   Stream<CounterState> get counterStreamState =>
//       _counterStateStreamController.stream;

//   // Now we have to sink all of the event's in the stream when the user click's such as increment and decrement event .
//   StreamSink<CounterEvents> get counterEventSink =>
//       _counterEventStreamController.sink;

//   CounterBloc() {
//     // Now in the constructor of the bloc we have to listen to the that is produced .
//     _counterEventStreamController.stream.listen(mapEventToState);
//   }

//   mapEventToState(event) {
//     // Now we have to check the event's and update the state based on the event's and then add the updated state in the and then sink it inside the stream .

//     if (event is CounterIncrementEvent) {
//       _counterState = CounterState(counter: _counterState.counter + 1);
//       _counterStateStreamController.sink.add(_counterState);
//     } else if (event is CounterDecrementEvent) {
//       _counterState = CounterState(counter: _counterState.counter - 1);
//       _counterStateStreamController.sink.add(_counterState);
//     }
//   }
// }
