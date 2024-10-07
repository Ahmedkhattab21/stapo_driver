import 'dart:async';

class TimerClass {
  late Timer _timer;
  int _start = 10; // Time in seconds
  bool isResendAllowed = false;
  Function onTick; // Callback for every tick
  Function onTimerComplete; // Callback for timer complete

  TimerClass({required this.onTick, required this.onTimerComplete}) {
    _startTimer();
  }

  // Starts the timer
  void _startTimer() {
    isResendAllowed = false;
    _start = 10;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_start == 0) {
        timer.cancel();
        isResendAllowed = true;
        onTimerComplete(); // Notify timer complete
      } else {
        _start--;
        onTick(_start); // Notify every tick
      }
    });
  }

  // Resend the code
  void resendCode() {
    if (isResendAllowed) {
      print("Code resent!");
      _startTimer(); // Restart the timer after resending the code
    } else {
      print("Wait until you can resend the code.");
    }
  }

  // Dispose the timer
  void dispose() {
    _timer.cancel();
  }
}
