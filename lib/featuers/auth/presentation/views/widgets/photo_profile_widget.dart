import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';

class PhotoProfileWidget extends StatelessWidget {
  const PhotoProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
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
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
              child: Text(
                'upload your\n profile image',
                style: kMvBoli18.copyWith(
                    height: 1.5, color: kWhiteColor, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Container(
            margin: const EdgeInsets.fromLTRB(117, 115, 6, 8),
            width: 37,
            height: 37,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              // color: kSecondaryColor,
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    kSecondaryColor,
                    kTextColor,
                  ]),
            ),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  color: kWhiteColor,
                ))),
      ],
    );
  }
}
