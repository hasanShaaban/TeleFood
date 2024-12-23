import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/core/widgets/drawer/widgets/action_list.dart';
import 'package:telefood/core/widgets/drawer/widgets/logout_button.dart';
import 'package:telefood/core/widgets/drawer/widgets/profile_container.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 245,
      decoration: const BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(50), bottomRight: Radius.circular(50)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 6, blurRadius: 12)
          ]),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [ProfileContainer(), ActionsList(),Spacer() ,LogoutButton()],
      ),
    );
  }
}
