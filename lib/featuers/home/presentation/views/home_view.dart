import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Scaffold(body: HomeViewBody(),));
  }
}

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const  CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 200,
          collapsedHeight: 100,
          backgroundColor: kPrimeryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(38), bottomRight: Radius.circular(38))),
        )
      ],
    );
  }
}