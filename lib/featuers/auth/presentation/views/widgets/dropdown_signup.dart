import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';

class DropdownSignup extends StatefulWidget {
  const DropdownSignup({
    super.key,
  });

  @override
  State<DropdownSignup> createState() => _DropdownSignupState();
}

class _DropdownSignupState extends State<DropdownSignup> {
  String selectItem = 'Damascus';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: const BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(27),
          ),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              icon: const Icon(
                Icons.place_outlined,
                color: kWhiteColor,
              ),
              hint: Text(
                'Select your location             ',
                style: kMvBoli14.copyWith(color: kWhiteColor, fontSize: 14),
              ),
              items: ['Damascus', 'Hama', 'Tartous', 'Daraa']
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    ),
                  )
                  .toList(),
              onChanged: (v) {
                setState(() {
                  selectItem = v.toString();
                });
              }),
        ),
      ),
    );
  }
}
