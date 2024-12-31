import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:telefood/core/utils/app_router.dart';
import 'package:telefood/featuers/auth/presentation/manager/signup_cubit/signup_cubit.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/signup_button.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/signup_confermming_container.dart';

class SignupConfermmingViewBody extends StatelessWidget {
  const SignupConfermmingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccess) {
          GoRouter.of(context).pushReplacement(AppRouter.kLoginViewRouter);
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Please, login with your new account')));
        } else if (state is SignupFailuer) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
            state.errorMessage,
          )));
        }
      },
      builder: (context, state) {
        return Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SignupConfermmingContainer(
                    state: state is SignupFailuer ? state : null,
                  ),
                  const SizedBox(height: 40),
                  const SignupButton(),
                ],
              ),
            ),
            Center(
              child: state is SignupLoading
                  ? const CircularProgressIndicator()
                  : null,
            )
          ],
        );
      },
    );
  }
}
