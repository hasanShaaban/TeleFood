
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telefood/core/providers/linear_timer_manager.dart';
import 'package:telefood/core/utils/constant.dart';

class LinearTimer extends StatelessWidget {
  const LinearTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LinearTimerManager>(
      builder: (context, timerManager, child) {
        if (timerManager.timerFinished) {
          // Show button when timer finishes
          return ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17))
            ),
            onPressed: () {
            },
            child: const Text("Done"),
          );
        } else {
          // Show timer bar while the timer is running
          return Row(
            children: [
              const Icon(Icons.timer_sharp, color: kTextColor,),
              Stack(
                children: [
                  Container(
                    height: 30.0,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: kSecondaryColor,
                    ),
                    child: FractionallySizedBox(
                      alignment: Alignment.centerLeft,
                      widthFactor: timerManager.barWidth,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "${(timerManager.millisecondsRemaining / 1000).toStringAsFixed(0)}s left",
                        style:const  TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        }
      },
    );
  }
}