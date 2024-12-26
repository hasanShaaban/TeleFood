import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:telefood/core/providers/login_info_provider.dart';
import 'package:telefood/core/utils/app_router.dart';
import 'package:telefood/featuers/auth/presentation/manager/login_cubit/login_cubit.dart';

import 'package:telefood/featuers/auth/presentation/views/widgets/login_button.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/login_container.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          GoRouter.of(context).pushReplacement(AppRouter.kHomeViewRouter);
        } else if (state is LoginLoading) {
        } else if (state is LoginFailuer) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(
                backgroundColor: Colors.red,
                content: Text(state.errorMessage)));
        }
      },
      builder: (context, state) {
        return Stack(children: [
          MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (context) => LoginInfoProvider())
            ],
            child: SingleChildScrollView(
              child: Column(
                children: [
                  LoginContainer(state: state is LoginFailuer ? state : null ),
                  const SizedBox(
                    height: 60,
                  ),
                   const LoginButton(),
                ],
              ),
            ),
          ),
          Center(child: (state is LoginLoading) ? const CircularProgressIndicator() : null)
        ]);
      },
    );
  }
}
