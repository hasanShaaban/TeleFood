import 'package:flutter/material.dart';
import 'package:telefood/core/widgets/appBar/main_appbar.dart';


class ShopView extends StatelessWidget {
  const ShopView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: ShopViewBody(),
      )
    );
  }
}

class ShopViewBody extends StatelessWidget {
  const ShopViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        MainAppBar(minAppBarHeight: 95,)
        
      ],
    );
  }
}