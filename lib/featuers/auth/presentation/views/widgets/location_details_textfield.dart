import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telefood/core/providers/signup_info_provider.dart';
import 'package:telefood/core/utils/constant.dart';

class LocationDetailsTextfield extends StatefulWidget {
  const LocationDetailsTextfield({super.key});

  @override
  State<LocationDetailsTextfield> createState() =>
      _LocationDetailsTextfieldState();
}

class _LocationDetailsTextfieldState extends State<LocationDetailsTextfield> {
  String? error;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 66),
      child: SizedBox(
        height: 50,
        child: TextField(
          onChanged: (String? value) {
            context
                .read<SignupInfoProvider>()
                .setLocationDetails(newLocationDetails: value.toString());
          },
          cursorColor: kSecondaryColor,
          scrollPadding: EdgeInsets.zero,
          textAlignVertical: TextAlignVertical.center,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              error: error != null
                  ? Text(error.toString(), style: kCandara10)
                  : null,
              contentPadding: const EdgeInsets.only(right: 30),
              hintStyle: kMvBoli20,
              prefixIcon: const Icon(Icons.info_outlined),
              prefixIconColor: kSecondaryColor,
              hintText: 'Add location details',
              enabledBorder:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide:
                      const BorderSide(color: kSecondaryColor, width: 2)),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: const BorderSide(color: Colors.red, width: 2)),
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: const BorderSide(color: Colors.red, width: 2)),
              fillColor: kWhiteColor,
              filled: true),
        ),
      ),
    );
  }
}
