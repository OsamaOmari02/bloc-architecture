part of 'timer_cubit.dart';

@immutable
sealed class TimerState {}

final class TimerInitial extends TimerState {}

final class TimerInProgress extends TimerState {
  final int timeRemaining;
  TimerInProgress({required this.timeRemaining});
}

final class TimerCompleted extends TimerState {}

final class TimerFailure extends TimerState {
  final String errMessage;
  TimerFailure({required this.errMessage});
}
