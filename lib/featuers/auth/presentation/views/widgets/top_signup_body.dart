import 'package:flutter/material.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/logo.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/photo_profile_widget.dart';

class TopSignupBody extends StatelessWidget {
  const TopSignupBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        LOGO(),
        Center(
            child: Padding(
          padding: EdgeInsets.only(top: 108),
          child: PhotoProfileWidget(),
        )),
      ],
    );
  }
}
