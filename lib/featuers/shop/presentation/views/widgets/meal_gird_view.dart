import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/featuers/shop/presentation/views/widgets/meal_cart.dart';

class MealGridView extends StatelessWidget {
  const MealGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('The Menu', style: kMvBoli24.copyWith(color: kPrimeryColor)),
              const SizedBox(
                height: 10,
              ),
              GridView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 20,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 22,
                      crossAxisSpacing: 22,
                      childAspectRatio: 17 / 21,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) => const MealCart()),
            ],
          ),
        ),
      ),
    );
  }
}
