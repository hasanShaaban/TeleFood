import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/core/widgets/add_button.dart';

class PhotoProfileWidget extends StatelessWidget {
  const PhotoProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 160,
          height: 160,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: kWhiteColor,
              width: 3,
            ),
          ),
          child: Container(
            margin: const EdgeInsets.all(10),
            width: 140,
            height: 140,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: kWhiteColor,
                width: 3,
              ),
            ),
            child: Center(
              child: Text(
                'upload your\n profile image',
                style: kMvBoli18.copyWith(
                    height: 1.5, color: kWhiteColor, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        const Positioned(top: 100, left: 120, child: AddButton())
      ],
    );
  }
}
