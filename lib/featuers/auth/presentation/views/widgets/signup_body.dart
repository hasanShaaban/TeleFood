import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:telefood/core/utils/app_router.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/dropdown_signup.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/next_button_widget.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/textfield_widget.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/top_signup_body.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 412,
          height: 690,
          decoration: const BoxDecoration(
            color: kPrimeryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(75),
              bottomRight: Radius.circular(75),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopSignupBody(),
              const SizedBox(
                height: 30,
              ),
              TextFieldWidget(
                icon: const Icon(Icons.edit),
                text: 'First Name',
                padding: 40,
              ),
              TextFieldWidget(
                icon: const Icon(Icons.edit),
                text: 'Last Name',
                padding: 40,
              ),
              const DropdownSignup(),
              TextFieldWidget(
                text: 'Add location details',
                padding: 74,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'you already have an account?',
                    style: kMvBoli18.copyWith(
                      color: kWhiteColor,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      GoRouter.of(context)
                          .pushReplacement(AppRouter.kLoginViewRouter);
                    },
                    child: Text(
                      'login',
                      style: kMvBoli14.copyWith(
                        color: kSecondaryColor,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 21,
        ),
        const NextButtonWiget(
          text: 'Next',
         

        )
      ],
    );
  }
}
