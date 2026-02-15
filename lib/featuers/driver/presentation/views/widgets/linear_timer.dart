import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telefood/bloc_providers.dart';
import 'package:telefood/core/providers/linear_timer_manager.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/core/utils/user_token.dart';

class LinearTimer extends StatefulWidget {
  const LinearTimer({super.key, required this.orderID});
  final String orderID;

  @override
  State<LinearTimer> createState() => _LinearTimerState();
}

class _LinearTimerState extends State<LinearTimer> {
  

  void _onButtonPressed() {
    setState(() {
      isButtonDisabled = true;
    });
    dynamic response = apiService.get2(
        endPoints: 'done/user/${widget.orderID}?', data: {'token': token});
    if (response != null) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Colors.green,
          content: Text('your order is deliverd successfully')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<LinearTimerManager>(
      builder: (context, timerManager, child) {
        if (timerManager.timerFinished) {
          // Show button when timer finishes
          return Column(
            children: [
              Text(
                'press \'done\' if you received your order: ',
                style: kMvBoli14.copyWith(color: kPrimeryColor),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  disabledBackgroundColor: isButtonDisabled? Colors.grey: null,
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17))),
                onPressed: isButtonDisabled ? null : _onButtonPressed,
                child: const Text("Done"),
              ),
            ],
          );
        } else {
          // Show timer bar while the timer is running
          return Row(
            children: [
              const Icon(
                Icons.timer_sharp,
                color: kTextColor,
              ),
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
                        style: const TextStyle(
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
