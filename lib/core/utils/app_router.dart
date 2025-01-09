import 'package:go_router/go_router.dart';
import 'package:telefood/featuers/auth/presentation/views/login_view.dart';
import 'package:telefood/featuers/auth/presentation/views/signup_confermming_view.dart';
import 'package:telefood/featuers/auth/presentation/views/signup_view.dart';
import 'package:telefood/featuers/cart/data/models/cart_response/cart_response.dart';
import 'package:telefood/featuers/cart/presentation/views/cart_view.dart';
import 'package:telefood/featuers/home/data/models/store_model/store_data.dart';
import 'package:telefood/featuers/home/presentation/views/home_view.dart';
import 'package:telefood/featuers/shop/data/models/products_model/products_data.dart';
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
  static const kCartViewRouter = '/CartView';
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
        builder: (context, state) => ShopView(data: state.extra as StoreData,),
      ),
      GoRoute(
        path: kOrderViewRouter,
        builder: (context, state) =>
            OrderView(data: state.extra as ProductsData),
      ),
      GoRoute(
        path: kCartViewRouter,
        builder: (context, state) => CartView(cartinfo: state.extra as CartResponse),
      ),
    ],
  );
}
