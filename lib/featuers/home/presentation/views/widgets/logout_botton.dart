import 'package:flutter/material.dart';

import 'package:telefood/core/utils/constant.dart';

class LogoutBotton extends StatelessWidget {
  const LogoutBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xff2A2C41),
      borderRadius: BorderRadius.circular(27),
      child: MaterialButton(
        onPressed: () {},
        child: SizedBox(
          width: 116,
          height: 39,
          child: Row(
            children: [
              Text(
                'Log out',
                style: kMvBoli18.copyWith(color: kWhiteColor, fontSize: 20),
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.logout,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
