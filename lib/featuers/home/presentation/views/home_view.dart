
import 'package:flutter/material.dart';
import 'package:telefood/core/widgets/appBar/main_appbar.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: HomeViewBody(),
    ));
  }
}

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return CustomScrollView(
      slivers: [
        MainAppBar(height: height, width: width),
      ],
    );
  }
}

