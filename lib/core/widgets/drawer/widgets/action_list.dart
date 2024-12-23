import 'package:flutter/material.dart';
import 'package:telefood/core/widgets/drawer/widgets/edit_info_button.dart';
import 'package:telefood/core/widgets/drawer/widgets/favotite_button.dart';
import 'package:telefood/core/widgets/drawer/widgets/help_button.dart';

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
        HelpButton(),
        Divider(
          thickness: 1.5,
        ),
      ],
    );
  }
}