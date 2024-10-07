import 'package:stapo_driver/core/utils/styles.dart';
import 'package:stapo_driver/features/forget_password/logic/forget_password_cubit.dart';
import 'package:stapo_driver/features/verify_code/domain/entity/timer_class.dart';
import 'package:flutter/material.dart';

class ResendCode extends StatefulWidget {
  final Function resendCode;

  const ResendCode({required this.resendCode, super.key});

  @override
  State<ResendCode> createState() => _ResendCodeState();
}

class _ResendCodeState extends State<ResendCode> {
  late TimerClass _timerClass;
  int _secondsRemaining = 10;

  @override
  void initState() {
    super.initState();
    // Initialize TimerClass
    _timerClass = TimerClass(
      onTick: (remainingTime) {
        setState(() {
          _secondsRemaining = remainingTime;
        });
      },
      onTimerComplete: () {
        setState(() {}); // Update UI when timer completes
      },
    );
  }

  @override
  void dispose() {
    _timerClass.dispose();
    super.dispose();
  }

  String _formatTime(int seconds) {
    int minutes = (seconds / 60).floor();
    int remainingSeconds = seconds % 60;
    return '$minutes:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    if (_timerClass.isResendAllowed) {
      return GestureDetector(
        onTap: () {
          _timerClass.resendCode();
          widget.resendCode();
        },
        child: Center(
          child: Text("اعادة ارسال الكود",
              style: TextStyles.font15DarkBlueColor33Weight700),
        ),
      );
    } else {
      return Center(
        child: Text("اعادة الارسال خلال ${_formatTime(_secondsRemaining)}",
            style: TextStyles.font15DarkBlueColor33Weight700),
      );
    }
  }
}
