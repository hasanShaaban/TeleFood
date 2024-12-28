import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:telefood/core/providers/signup_info_provider.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/featuers/auth/data/models/registration_model.dart';
import 'package:telefood/featuers/auth/presentation/manager/signup_cubit/signup_cubit.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({super.key});

  

  @override
  Widget build(BuildContext context) {
    SignupInfoProvider provider = Provider.of<SignupInfoProvider>(context, listen: false);
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            shadowColor: Colors.black,
            elevation: 6,
            minimumSize: const Size(150, 54),
            backgroundColor: kSecondaryColor),
        onPressed: () {
          RegistrationModel registrationModel = RegistrationModel(
            firstName: provider.firstName,
            lastName: provider.lastName,
            location: provider.location,
            locationDetails: provider.locationDetails,
            mobile: provider.mobile,
            passowrd: provider.passowrd,
            confirmPassowrd: provider.confirmPassowrd,
            image: provider.image,
          );
          print(provider.passowrd);
          print(provider.mobile);
          print(provider.confirmPassowrd);
          BlocProvider.of<SignupCubit>(context).signupRequest(registrationModel);
        },
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Sign up', style: kMvBoli20),
            SizedBox(
              width: 7,
            ),
            Icon(Icons.login)
          ],
        ));
  }
}
