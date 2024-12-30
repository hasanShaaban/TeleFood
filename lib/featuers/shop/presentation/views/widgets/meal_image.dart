import 'package:flutter/material.dart';
import 'package:telefood/featuers/shop/data/models/products_model/datum.dart';

class MealImage extends StatelessWidget {
  const MealImage({
    super.key, required this.data,
  });

  final Datum data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: AspectRatio(
          aspectRatio: 12 / 9,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: NetworkImage(data.imgeUrl!),
                fit: BoxFit.cover,
              ))),
    );
  }
}
