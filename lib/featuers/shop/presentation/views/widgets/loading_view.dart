import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: GridView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 20,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 22,
                  crossAxisSpacing: 22,
                  childAspectRatio: 17 / 20,
                  crossAxisCount: 2),
              itemBuilder: (context, index) => Container(),
            )));
  }
}
