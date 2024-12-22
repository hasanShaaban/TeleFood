import 'package:flutter/material.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/logo_section.dart';

class ImagesSection extends StatelessWidget {
  const ImagesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LogoSection(),
        Padding(
          padding: EdgeInsets.fromLTRB(25, 30, 0, 0),
          child: Image(
              height: 208,
              width: 350,
              image: AssetImage(
                'assets/images/loging_pic.png',
              )),
        ),
      ],
    );
  }
}


