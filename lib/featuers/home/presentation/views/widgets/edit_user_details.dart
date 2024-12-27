import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:telefood/core/utils/app_router.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/dropdown_signup.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/next_button_widget.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/textfield_widget.dart';
import 'package:telefood/featuers/home/presentation/views/widgets/row_edit_my_profile.dart';
import 'package:telefood/featuers/home/presentation/views/widgets/submit_button.dart';

class EditUserDetails extends StatelessWidget {
  const EditUserDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 33),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const RowEditMyProfile(
            firstText: 'First name',
            secondText: 'firstname',
          ),
          const RowEditMyProfile(
            firstText: 'Last name',
            secondText: 'lastname',
          ),
          const RowEditMyProfile(
            firstText: 'PhoneNumber',
            secondText: '012345678',
          ),
          const Text(
            'Location : ',
            style: kCandara18Bold,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: DropdownSignup(),
          ),
          TextFieldWidget(
            icon: const Icon(Icons.info_outline),
            text: 'some details',
            padding: 40,
          ),
          const SizedBox(
            height: 30,
          ),
          const Center(
              child: SubmitButton(
            text: 'Submit',
          )),
        ],
      ),
    );
  }
}
