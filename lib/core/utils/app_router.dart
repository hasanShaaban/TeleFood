import 'package:go_router/go_router.dart';
import 'package:telefood/featuers/auth/presentation/views/login_view.dart';
import 'package:telefood/featuers/auth/presentation/views/signup_confermming_view.dart';
import 'package:telefood/featuers/auth/presentation/views/signup_view.dart';
import 'package:telefood/featuers/home/data/models/store_model/datum.dart';
import 'package:telefood/featuers/home/presentation/views/home_view.dart';
import 'package:telefood/featuers/shop/presentation/views/order_view.dart';
import 'package:telefood/featuers/shop/presentation/views/shop_view.dart';
import 'package:telefood/featuers/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeViewRouter = '/HomeView';
  static const kSearchViewRouter = '/SearchView';
  static const kLoginViewRouter = '/LoginView';
  static const kSignupViewRouter = '/SignupView';
  static const kSignupConfermmingViewRouter = '/SignupConfermmingView';
  static const kShopViewRouter = '/ShopView';
  static const kOrderViewRouter = '/OrderView';
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
        path: kSignupViewRouter,
        builder: (context, state) => const SignupView(),
      ),
      GoRoute(
        path: kSignupConfermmingViewRouter,
        builder: (context, state) => const SignupConfermmingView(),
      ),
      GoRoute(
        path: kShopViewRouter,
        builder: (context, state) => ShopView(data: state.extra as Datum),
      ),
      GoRoute(
        path: kOrderViewRouter,
        builder: (context, state) => const OrderView(),
      ),
    ],
  );
}
