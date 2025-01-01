import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:telefood/core/providers/signup_info_provider.dart';
import 'package:telefood/core/utils/api_service.dart';
import 'package:telefood/core/utils/app_router.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/core/widgets/appBar/repo/search_repo.dart';
import 'package:telefood/core/widgets/appBar/search_cubit/search_cubit.dart';
import 'package:telefood/core/widgets/drawer/cubit/user_info_cubit.dart';
import 'package:telefood/core/widgets/drawer/repo/userInfo_repo.dart';
import 'package:telefood/featuers/auth/data/repo/auth_repo.dart';
import 'package:telefood/featuers/auth/data/repo/auth_repo_imple.dart';
import 'package:telefood/featuers/auth/presentation/manager/login_cubit/login_cubit.dart';
import 'package:telefood/featuers/auth/presentation/manager/signup_cubit/signup_cubit.dart';
import 'package:telefood/featuers/home/data/repo/home_repo.dart';
import 'package:telefood/featuers/home/data/repo/home_repo_impl.dart';
import 'package:telefood/featuers/home/presentation/manager/stores_cubit/get_stores_cubit.dart';
import 'package:telefood/featuers/shop/data/repo/shop_repo.dart';
import 'package:telefood/featuers/shop/data/repo/shop_repo_impl.dart';
import 'package:telefood/featuers/shop/presentation/manager/shop_cubit/get_products_cubit.dart';

void main() {
  runApp(const MyApp());
}

ApiService apiService = ApiService(Dio());

final AuthRepo authRepo = AuthRepoImple(apiService: apiService);
final HomeRepo homeRepo = HomeRepoImpl(apiService: apiService);
final ShopRepo shopRepo = ShopRepoImpl(apiService: apiService);
final UserinfoRepo userinfoRepo = UserinfoRepo(apiService);
final SearchRepo searchRepo = SearchRepo(apiService);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginCubit(authRepo),
        ),
        BlocProvider(
          create: (context) => SignupCubit(authRepo),
        ),
        BlocProvider(
          create: (context) => GetStoresCubit(homeRepo)..getStores(),
        ),
        BlocProvider(
          create: (context) => GetProductsCubit(shopRepo),
        ),
        BlocProvider(
          create: (context) => UserInfoCubit(userinfoRepo),
        ),
        BlocProvider(
          create: (context) => SearchCubit(searchRepo),
        ),
      ],
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => SignupInfoProvider())
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
