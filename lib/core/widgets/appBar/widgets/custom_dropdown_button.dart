import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telefood/core/utils/constant.dart';

class CustomDropDownButton extends StatelessWidget {
  const CustomDropDownButton({
    super.key, required this.hint,
  });
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 33,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 3,
            blurRadius: 6
          )
        ],
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(17),
        border: Border.all(color: kScaffoldColor, width: 1)
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          alignment: AlignmentDirectional.centerEnd,
          iconSize: 45,
          iconEnabledColor: kScaffoldColor,
          icon: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: SvgPicture.asset('assets/images/Path 21.svg',),
          ),
          hint: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 11),
            child: Text(hint,style: kMvBoli18.copyWith(color: kScaffoldColor),),
          ),
          borderRadius: BorderRadius.circular(17),
            items: locations.map((String items) {
              return DropdownMenuItem(
                  value: items, child: Text(items));
            }).toList(),
            onChanged: (String? location) {}),
      ),
    );
  }
}

var locations = ['Damascus', 'Tartous', 'Dara', 'Hama'];