import 'package:go_router/go_router.dart';
import 'package:telefood/featuers/auth/presentation/views/signup_view.dart';
import 'package:telefood/featuers/home/presentation/views/home_view.dart';
import 'package:telefood/featuers/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeViewRouter = '/HomeView';
  static const kSearchViewRouter = '/SearchView';
  static const kSignupViewRouter = '/SignupView';
  static const kConfirmPassWordVewRouter = '/ConfirmPasswordView';
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
        path: kSignupViewRouter,
        builder: (context, state) => const SingupView(),
      ),
       GoRoute(
        path: kConfirmPassWordVewRouter,
        builder: (context, state) => const SplashView(),
      ),
    ],
  );
}
