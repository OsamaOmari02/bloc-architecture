String getTimerText(int timeRemaining) {
  final String minutes = (timeRemaining ~/ 60).toString().padLeft(2, '0');
  final String seconds = (timeRemaining % 60).toString().padLeft(2, '0');
  return '$minutes:$seconds';
}
