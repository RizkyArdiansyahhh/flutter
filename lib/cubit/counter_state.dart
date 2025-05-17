part of 'counter_cubit.dart';

sealed class CounterState extends Equatable {
  final int value;
  const CounterState(this.value);

  @override
  List<Object> get props => [];
}

final class CounterInitial extends CounterState {
  const CounterInitial(int value) : super(value);
}

class CounterChanged extends CounterState {
  const CounterChanged(int value) : super(value);
}
