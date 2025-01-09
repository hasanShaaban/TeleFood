import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:telefood/bloc_providers.dart';
import 'package:telefood/core/providers/signup_info_provider.dart';
import 'package:telefood/core/utils/app_router.dart';
import 'package:telefood/core/utils/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: providers,
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => SignupInfoProvider()),
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: AppRouter.router,
          theme: ThemeData(
              scaffoldBackgroundColor: kWhiteColor, useMaterial3: false),
        ),
      ),
    );
  }
}
