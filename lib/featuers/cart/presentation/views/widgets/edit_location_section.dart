import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/core/utils/user_token.dart';

class EditLocationSection extends StatelessWidget {
  const EditLocationSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.location_on_outlined, color: kSecondaryColor,),
        Text(
          'edit location: ',
          style: kMvBoli20.copyWith(color: kSecondaryColor),
        ),
        const SizedBox(width: 20,),
        SizedBox(
          width: 170,
          height: 33,
          child: TextField(
            onChanged: (value) {},
            cursorHeight: 18,
            cursorColor: kSecondaryColor,
            textAlignVertical: TextAlignVertical.center,
            textAlign: TextAlign.center,
            style: kMvBoli14,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              
                contentPadding: const EdgeInsets.all(5),
                hintText: userLocation,
                hintStyle: kMvBoli14.copyWith(
                    color: kPrimeryColor.withOpacity(.4)),
                filled: true,
                fillColor: kWhiteColor,
                enabledBorder:const UnderlineInputBorder(
    
                ),
                focusedBorder:const UnderlineInputBorder(
                  borderSide: BorderSide(color: kSecondaryColor)
                )),
          ),
        ),
      ],
    );
  }
}
