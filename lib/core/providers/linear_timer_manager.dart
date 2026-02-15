import 'dart:async';

import 'package:flutter/material.dart';

class LinearTimerManager extends ChangeNotifier {
  final int durationMilliseconds;
  final Function onTimerFinish;
  late int millisecondsRemaining;
  late double barWidth;
  final int updateInterval = 17; // Timer interval in milliseconds
  bool _timerFinished = false;
  Timer? _timer;

  LinearTimerManager({
    required this.durationMilliseconds,
    required this.onTimerFinish,
  }) {
    millisecondsRemaining = durationMilliseconds;
    barWidth = 1.0;
  }
  

  bool get timerFinished => _timerFinished;

  void startTimer() {
    _timerFinished = false;
    _timer = Timer.periodic(
      Duration(milliseconds: updateInterval),
      (timer) {
        if (millisecondsRemaining > 0) {
          millisecondsRemaining -= updateInterval;
          barWidth = millisecondsRemaining <= 0
              ? 0
              : millisecondsRemaining / durationMilliseconds;
          notifyListeners(); // Notify listeners to update the UI
        } else {
          _timerFinished = true;
          onTimerFinish();
          stopTimer();
        }
      },
    );
  }

  void stopTimer() {
    _timer?.cancel();
    _timer = null;
  }

  @override
  void dispose() {
    stopTimer();
    super.dispose();
  }
}