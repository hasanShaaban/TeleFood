
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:telefood/core/providers/login_info_provider.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/featuers/auth/data/models/login_model.dart';
import 'package:telefood/featuers/auth/presentation/manager/login_cubit/login_cubit.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
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
          LoginModel loginModel = LoginModel(
            phoneNumber: Provider.of<LoginInfoProvider>(context, listen: false)
                .phoneNumber
                .toString(),
            passowrd: Provider.of<LoginInfoProvider>(context, listen: false)
                .passowrd
                .toString(),
          );
          BlocProvider.of<LoginCubit>(context).loginRequest(loginModel);
        },
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Login', style: kMvBoli20),
            SizedBox(
              width: 7,
            ),
            Icon(Icons.login)
          ],
        ));
  }
}
