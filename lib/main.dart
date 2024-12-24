import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telefood/core/utils/api_service.dart';
import 'package:telefood/core/utils/app_router.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/featuers/auth/data/repo/auth_repo.dart';
import 'package:telefood/featuers/auth/data/repo/auth_repo_imple.dart';
import 'package:telefood/featuers/auth/presentation/manager/login_cubit/login_cubit.dart';

void main() {
  runApp(const MyApp());
}

final AuthRepo authRepo = AuthRepoImple(apiService: ApiService(Dio()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginCubit(authRepo),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
        theme: ThemeData(
            scaffoldBackgroundColor: kWhiteColor, useMaterial3: false),
      ),
    );
  }
}
