import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/core/widgets/drawer/widgets/profile_container.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 245,
      decoration: const BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(50), bottomRight: Radius.circular(50)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 6, blurRadius: 12)
          ]),
      child: const Column(
        children: [ProfileContainer(), ActionsList()],
      ),
    );
  }
}

class ActionsList extends StatelessWidget {
  const ActionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        EditInfoButton(),
        Divider(
          thickness: 1.5,
        ),
        FavoriteButton(),
        Divider(
          thickness: 1.5,
        ),
      ],
    );
  }
}

class EditInfoButton extends StatelessWidget {
  const EditInfoButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: const Row(
        children: [
          Icon(
            Icons.edit_outlined,
            size: 24,
            color: kSecondaryColor,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'Change user info',
            style: kMvBoli20,
          ),
        ],
      ),
    );
  }
}

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
