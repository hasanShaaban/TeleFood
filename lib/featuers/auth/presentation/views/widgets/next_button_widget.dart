import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:telefood/core/providers/signup_info_provider.dart';
import 'package:telefood/core/utils/app_router.dart';
import 'package:telefood/core/utils/constant.dart';

class NextButtonWiget extends StatelessWidget {
  const NextButtonWiget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SignupInfoProvider provider = Provider.of<SignupInfoProvider>(context);
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
          if (provider.firstName == null ||
              provider.lastName == null ||
              provider.image == null ||
              provider.location == null ||
              provider.locationDetails == null) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text(
                'Pleas fill all the fields',
                style: kMvBoli18,
              ),
              backgroundColor: kPrimeryColor,
            ));
          } else {
            GoRouter.of(context).push(AppRouter.kSignupConfermmingViewRouter);
          }
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
