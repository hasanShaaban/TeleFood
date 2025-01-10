import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:telefood/core/utils/app_router.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/core/utils/user_token.dart';

class CustomAppBarIconButton extends StatelessWidget {
  const CustomAppBarIconButton({
    super.key,
    required this.icon, this.target,
  });
  final String? target;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          if (icon == kBackButton) {
            if(target == 'edit'){
              GoRouter.of(context).push(AppRouter.kShopViewRouter, extra: store!);
            }else{
              GoRouter.of(context).pop();
            }
            
          } else if (icon == Icons.menu) {
            
            Scaffold.of(context).openDrawer();
          }
        },
        icon: Icon(
          icon,
          color: kSecondaryColor,
          size: 36,
        ));
  }
}
