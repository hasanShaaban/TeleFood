import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:telefood/featuers/auth/presentation/views/accoun_info_view.dart';
import 'package:telefood/featuers/auth/presentation/views/signup_view.dart';
import 'package:telefood/featuers/auth/presentation/views/login_view.dart';
import 'package:telefood/featuers/home/presentation/views/edit_my_profile.dart';
import 'package:telefood/featuers/home/presentation/views/home_view.dart';

import 'package:telefood/featuers/shop/presentation/views/shop_view.dart';
import 'package:telefood/featuers/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeViewRouter = '/HomeView';
  static const kSearchViewRouter = '/SearchView';
  static const kLoginViewRouter = '/LoginView';
  static const kShopViewRouter = '/ShopView';
  static const kSignupViewRouter = '/SignupView';
  static const kConfirmPassWordVewRouter = '/AccounInfoView';
  static const kEditMyProfile = '/EditMyProfile';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeViewRouter,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kLoginViewRouter,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: kShopViewRouter,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const ShopView(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              // Change the opacity of the screen using a Curve based on the the animation's
              // value
              return FadeTransition(
                opacity:
                    CurveTween(curve: Curves.easeInOutCirc).animate(animation),
                child: child,
              );
            },
          );
        },
      ),
      GoRoute(
        path: kSignupViewRouter,
        builder: (context, state) => const SingupView(),
      ),
      GoRoute(
        path: kConfirmPassWordVewRouter,
        builder: (context, state) => const AccounInfoView(),
      ),
      GoRoute(
        path: kEditMyProfile,
        builder: (context, state) => const EditMyProfile(),
      ),
    ],
  );
}
