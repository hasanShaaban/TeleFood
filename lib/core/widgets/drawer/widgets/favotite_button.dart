import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: const Row(
        children: [
          Icon(
            Icons.favorite_outline,
            size: 24,
            color: kSecondaryColor,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'Favorite',
            style: kMvBoli20,
          ),
        ],
      ),
    );
  }
}