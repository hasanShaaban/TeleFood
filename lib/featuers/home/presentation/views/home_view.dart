import 'package:flutter/material.dart';
import 'package:telefood/core/widgets/drawer/main_drawer.dart';

import 'package:telefood/featuers/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      drawer: MainDrawer(),
      drawerScrimColor: Colors.black12,
      body: HomeViewBody(),
    ));
  }
}
