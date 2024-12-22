import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';

class LocationDetailsTextfield extends StatelessWidget {
  const LocationDetailsTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 66),
      child: SizedBox(
        height: 50,
        child: TextField(
          cursorColor: kSecondaryColor,
          scrollPadding: EdgeInsets.zero,
          textAlignVertical: TextAlignVertical.center,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              contentPadding:const EdgeInsets.only(right: 30),
              hintStyle: kMvBoli20,
              prefixIcon:const Icon(Icons.info_outlined),
              prefixIconColor: kSecondaryColor,
              hintText: 'Add location details',
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25), borderSide:const BorderSide(color: kSecondaryColor, width: 2)),
              fillColor: kWhiteColor,
              filled: true),
        ),
      ),
    );
  }
}