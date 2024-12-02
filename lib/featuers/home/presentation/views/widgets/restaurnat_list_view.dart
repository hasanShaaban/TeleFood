import 'package:flutter/material.dart';
import 'package:telefood/featuers/home/presentation/views/widgets/restauran_card.dart';

class RestaurantListView extends StatelessWidget {
  const RestaurantListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
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
    );
  }
}