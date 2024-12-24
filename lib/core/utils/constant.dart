import 'package:flutter/material.dart';

// Colors
const kPrimeryColor = Color(0xff2A2C41);
const kWhiteColor = Color(0xffF4F4F8);
const kSecondaryColor = Color(0xffFF724C);
const kTextColor = Color(0xffFDBF50);

//TextStyle

const kCandara18Bold = TextStyle(
  fontFamily: 'Candara',
  fontSize: 20,
  fontWeight: FontWeight.bold,
);
const kCandara20 = TextStyle(
  fontFamily: 'Candara',
  fontSize: 20,
);
const kMvBoli18 = TextStyle(
  fontFamily: 'MvBoli',
  fontSize: 18,
);
const kMvBoli20 = TextStyle(
  fontFamily: 'MvBoli',
  fontSize: 20,
);
const kMvBoli14 = TextStyle(
  fontFamily: 'MvBoli',
  fontSize: 16,
);
const kMvBoli24 = TextStyle(
  fontFamily: 'MvBoli',
  fontSize: 24,
);
const kMvBoli30 = TextStyle(
  fontFamily: 'MvBoli',
  fontSize: 34,
);
const kMvBoli20WithShadow = TextStyle(
    fontFamily: 'MvBoli',
    fontSize: 20,
    color: kWhiteColor,
    shadows: [
      Shadow(color: Colors.black, blurRadius: 20, offset: Offset(0, 4))
    ]);
const kMvBoli24WithShadow = TextStyle(
    fontFamily: 'MvBoli',
    fontSize: 24,
    color: kWhiteColor,
    shadows: [
      Shadow(color: Colors.black, blurRadius: 15, offset: Offset(0, 4))
    ]);

//icons
const kBackButton = Icons.arrow_back;
