import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:telefood/featuers/home/presentation/views/widgets/restauran_card.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => const RestaurantCard(
          data: null,
        ),
        itemCount: 10,
      ),
    ));
  }
}
