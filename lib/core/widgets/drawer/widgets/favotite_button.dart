import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:telefood/core/utils/app_router.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/core/utils/user_token.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        GoRouter.of(context).push(AppRouter.kFavouriteRouter);
        print(favorite);
      },
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
