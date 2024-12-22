import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:telefood/core/utils/app_router.dart';
import 'package:telefood/core/utils/constant.dart';

class NextButtonWiget extends StatelessWidget {
  const NextButtonWiget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            shadowColor: Colors.black,
            elevation: 6,
            minimumSize: const Size(150, 54),
            backgroundColor: kSecondaryColor),
        onPressed: () {
          GoRouter.of(context).pushReplacement(AppRouter.kHomeViewRouter);
        },
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Next', style: kMvBoli20),
            SizedBox(
              width: 7,
            ),
            Icon(Icons.navigate_next_rounded)
          ],
        ));
  }
}
