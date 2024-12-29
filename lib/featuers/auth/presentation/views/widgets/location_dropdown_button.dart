import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:telefood/core/providers/signup_info_provider.dart';
import 'package:telefood/core/utils/constant.dart';

class LocationDropDownButton extends StatefulWidget {
  const LocationDropDownButton({
    super.key,
    required this.hint,
  });
  final String hint;

  @override
  State<LocationDropDownButton> createState() => _LocationDropDownButtonState();
}

class _LocationDropDownButtonState extends State<LocationDropDownButton> {
  String? value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
            value: value,
            alignment: AlignmentDirectional.center,
            iconSize: 45,
            iconEnabledColor: kWhiteColor,
            icon: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: SvgPicture.asset(
                'assets/images/Path 21.svg',
              ),
            ),
            hint: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11),
              child: Text(
                widget.hint,
                style: kMvBoli18.copyWith(color: kWhiteColor),
              ),
            ),
            borderRadius: BorderRadius.circular(17),
            items: locations.map((String items) {
              return DropdownMenuItem(value: items, child: Text(items));
            }).toList(),
            onChanged: (String? location) {
              setState(() {
                Provider.of<SignupInfoProvider>(context, listen: false)
                    .setLocation(newLocation: location.toString());
                value = location;
              });
            }),
      ),
    );
  }
}

var locations = ['Damascus', 'Tartous', 'Dara', 'Hama'];
