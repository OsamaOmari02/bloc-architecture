import 'dart:async';

import 'package:bloc_architecture/features/shared/classes/base_cubit_class.dart';
import 'package:meta/meta.dart';

part 'timer_state.dart';

class TimerCubit extends BaseCubit<TimerState> {
  TimerCubit(this.timeInSeconds) : super(TimerInitial());

  int timeInSeconds;
  Timer? _timer;

  void start() {
    try {
      int timeRemaining = timeInSeconds;
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        if (timeRemaining > 0) {
          safeEmit(TimerInProgress(timeRemaining: timeRemaining));
          timeRemaining--;
        } else {
          _timer?.cancel();
          safeEmit(TimerCompleted());
        }
      });
    } catch (e) {
      safeEmit(TimerFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
