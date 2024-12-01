import 'package:flutter/material.dart';
import 'package:telefood/core/widgets/appBar/main_appbar.dart';
import 'package:telefood/featuers/home/presentation/views/widgets/restauran_card.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const MainAppBar(),
        SliverToBoxAdapter(
          child: Expanded(
            child: Column(
              children: [
                ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => const RestaurantCard(),
                  itemCount: 10,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}