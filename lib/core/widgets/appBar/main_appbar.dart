import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/core/widgets/appBar/widgets/custom_appbar_icon_button.dart';
import 'package:telefood/core/widgets/appBar/widgets/custom_search_textfield.dart';
import 'package:telefood/core/widgets/appBar/widgets/hideable_appbar_items.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({
    super.key, this.minAppBarHeight,
  });

  final double? minAppBarHeight;
  @override
  Widget build(BuildContext context) {
    
    return SliverAppBar(
        pinned: true,
        expandedHeight: minAppBarHeight ?? 190,
        collapsedHeight: 95,
        backgroundColor: kPrimeryColor,
        elevation: 10,
        forceElevated: true,
        shadowColor: Colors.black,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(38),
                bottomRight: Radius.circular(38))),
        flexibleSpace: const FlexibleSpaceBar(
          background:  HideableAppBarItems(),
          titlePadding:  EdgeInsets.only(
              top: 27, left: 27, bottom: 25, right: 26),
          expandedTitleScale: 1,
          title: Align(
            alignment: Alignment.center,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 CustomAppBarIconButton(
                  icon: Icons.menu,
                ),
                CustomSearchTextField(),
                 CustomAppBarIconButton(
                    icon: Icons.notifications_none_outlined)
              ],
            ),
          ),
        ));
  }
}
