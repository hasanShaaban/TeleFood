import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      
      padding:const EdgeInsets.only(right: 20, bottom: 20),
      child: SizedBox(
        width: 115,
        child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor:const WidgetStatePropertyAll(kPrimeryColor),
              foregroundColor:const WidgetStatePropertyAll(kWhiteColor),
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)))
            ),
            child: const Row(
              children: [
                Text('Logout', style: kMvBoli18),
                SizedBox(width: 4),
                Icon(Icons.logout_rounded)
              ],
            )),
      ),
    );
  }
}