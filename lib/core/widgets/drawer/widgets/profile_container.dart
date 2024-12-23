import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 320,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(50)),
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                kPrimeryColor,
                kSecondaryColor,
              ])),
      child: Padding(
        padding: const EdgeInsets.only(top: 37, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Profile',
              style: kMvBoli24.copyWith(color: kWhiteColor),
            ),
            const SizedBox(height: 10),
            const CircleAvatar(
              radius: 60,
              backgroundColor: kWhiteColor,
            ),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Icon(
                  Icons.account_circle_outlined,
                  color: kSecondaryColor,
                  size: 24,
                ),
                const SizedBox(width: 5),
                Text('UserName',
                    style: kCandara20.copyWith(color: kWhiteColor)),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Icon(
                  Icons.phone_outlined,
                  color: kSecondaryColor,
                  size: 24,
                ),
                const SizedBox(width: 5),
                Text('0911122233',
                    style: kCandara20.copyWith(color: kWhiteColor)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
