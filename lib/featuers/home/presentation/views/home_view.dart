import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';

import 'package:telefood/featuers/home/presentation/views/widgets/home_view_body.dart';
import 'package:telefood/featuers/home/presentation/views/widgets/profile_and_setting.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: const HomeViewBody(),
      drawer: SafeArea(
        child: Container(
            width: 244,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xff2A2C41),
                    kSecondaryColor,
                  ]),
            ),
            child: const ProfileAndSetting()),
      ),
    ));
  }
}
