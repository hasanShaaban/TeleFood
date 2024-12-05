import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * .05,
      width: width * .6,
      child: TextField(
        style: kCandara18Bold,
        scrollPadding: EdgeInsets.zero,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: kSecondaryColor,
          ),
          contentPadding: const EdgeInsets.only(right: 15),
          filled: true,
          fillColor: kWhiteColor,
          enabledBorder: buildOutLineInputBorder(),
          focusedBorder: buildOutLineInputBorder(),
          hintText: 'Search',
          hintStyle: kCandara18Bold.copyWith(color: kSecondaryColor),
        ),
      ),
    );
  }
}

OutlineInputBorder buildOutLineInputBorder() {
  return OutlineInputBorder(
      borderSide: const BorderSide(color: kSecondaryColor, width: 2),
      borderRadius: BorderRadius.circular(18));
}
