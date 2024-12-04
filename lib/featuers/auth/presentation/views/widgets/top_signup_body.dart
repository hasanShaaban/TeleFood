import 'package:flutter/material.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/photo_profile_widget.dart';

class TopSignupBody extends StatelessWidget {
  const TopSignupBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Image.asset(
            'assets/images/teleFood_log_min.png',
            width: 80,
            height: 80,
          ),
        ),
        const Center(
            child: Padding(
          padding: EdgeInsets.only(top: 108),
          child: PhotoProfileWidget(),
        )),
      ],
    );
  }
}
