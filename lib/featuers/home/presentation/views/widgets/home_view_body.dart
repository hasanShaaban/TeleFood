import 'package:flutter/material.dart';
import 'package:telefood/core/widgets/appBar/main_appbar.dart';
import 'package:telefood/featuers/home/presentation/views/widgets/restaurnat_list_view.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const CustomScrollView(
      physics:  BouncingScrollPhysics(),
      slivers: [
       MainAppBar(),
        RestaurantListView()
      ],
    );
  }
}

