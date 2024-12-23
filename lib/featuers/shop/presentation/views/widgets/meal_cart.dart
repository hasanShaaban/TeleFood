import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/core/widgets/add_button.dart';

class MealCart extends StatelessWidget {
  const MealCart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      clipBehavior: Clip.none,
      children: [
        MealInfo(),
        AddButton(),
      ],
    );
  }
}

class MealInfo extends StatelessWidget {
  const MealInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(22),
          boxShadow: const [
            BoxShadow(
                color: Colors.black12,
                spreadRadius: 3,
                blurRadius: 6,
                offset: Offset(0, 5))
          ]),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: AspectRatio(
                aspectRatio: 12 / 9,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      image: AssetImage('assets/images/crispy.jpg'),
                      fit: BoxFit.fill,
                    ))),
          )
        ],
      ),
    );
  }
}
