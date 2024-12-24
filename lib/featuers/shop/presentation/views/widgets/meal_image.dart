import 'package:flutter/material.dart';

class MealImage extends StatelessWidget {
  const MealImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: AspectRatio(
          aspectRatio: 12 / 9,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child:const Image(
                image: AssetImage('assets/images/crispy.jpg'),
                fit: BoxFit.fill,
              ))),
    );
  }
}