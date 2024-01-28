part of 'counter_bloc.dart';

@immutable
sealed class CounterEvent {}

@immutable
class CounterIncrementEvent extends CounterEvent {}

@immutable
class CounterDecrementEvent extends CounterEvent {}
