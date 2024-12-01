import 'package:flutter/material.dart';

class ImagesSection extends StatelessWidget {
  const ImagesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
          child: Image(
            height: 80,
            width: 80,
            image: AssetImage(
              'assets/images/teleFood_log_min.png',
            ),
          ),
        ),
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
