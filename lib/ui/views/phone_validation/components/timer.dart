import 'dart:async';
import 'package:car_pooling_app/ui/common/app_colors.dart';
import 'package:car_pooling_app/ui/common/custom_widgets.dart';
import 'package:car_pooling_app/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';

class TimerPage extends StatefulWidget {
  const TimerPage({super.key});

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  Timer? countdownTimer;
  Duration myDuration = const Duration(seconds: 6);
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  /// Timer related methods ///
  // Step 3
  void startTimer() {
    countdownTimer =
        Timer.periodic(const Duration(seconds: 1), (_) => setCountDown());
  }

  // Step 4
  void stopTimer() {
    setState(() => countdownTimer!.cancel());
  }

  // Step 5
  void resetTimer() {
    stopTimer();
    setState(() => myDuration = const Duration(days: 5));
  }

  // Step 6
  void setCountDown() {
    const reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countdownTimer!.cancel();
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String strDigits(int n) => n.toString().padLeft(2, '0');
    final seconds = strDigits(myDuration.inSeconds);
    if (myDuration.inSeconds >= 1) {
      return Text(
        'Did not receive code? Resend ${seconds}s',
        style: TextStyle(
            color: kcLightGrey,
            fontSize: getResponsiveMediumFontSize(context) * 1.8),
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DefaultTextButton(
            text: 'Resend',
            onPress: () {},
          ),
          horizontalSpaceSmall,
          Text(
            'or',
            style: TextStyle(color: kcLightGrey, fontWeight: FontWeight.bold),
          ),
          horizontalSpaceSmall,
          DefaultTextButton(
            text: 'Obtain via Whatsapp',
            onPress: () {},
          )
        ],
      );
    }
  }
}
