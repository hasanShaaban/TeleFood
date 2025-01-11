import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';
import 'package:telefood/core/data/category/category_cubit/category_cubit.dart';
import 'package:telefood/core/data/category/category_repo/category_repo.dart';
import 'package:telefood/core/utils/api_service.dart';
import 'package:telefood/core/widgets/appBar/repo/search_repo.dart';
import 'package:telefood/core/widgets/appBar/search_cubit/search_cubit.dart';
import 'package:telefood/core/widgets/drawer/cubit/user_info_cubit.dart';
import 'package:telefood/core/widgets/drawer/repo/userInfo_repo.dart';
import 'package:telefood/featuers/auth/data/repo/auth_repo.dart';
import 'package:telefood/featuers/auth/data/repo/auth_repo_imple.dart';
import 'package:telefood/featuers/auth/presentation/manager/login_cubit/login_cubit.dart';
import 'package:telefood/featuers/auth/presentation/manager/signup_cubit/signup_cubit.dart';
import 'package:telefood/featuers/cart/data/repo/cart_repo.dart';
import 'package:telefood/featuers/cart/data/repo/cart_repo_impl.dart';
import 'package:telefood/featuers/cart/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:telefood/featuers/favoutite/data/repo/fav_repo_impl.dart';
import 'package:telefood/featuers/favoutite/presentation/manager/get_favourite_cubit/get_favourite_cubit.dart';
import 'package:telefood/featuers/home/data/repo/home_repo.dart';
import 'package:telefood/featuers/home/data/repo/home_repo_impl.dart';
import 'package:telefood/featuers/home/presentation/manager/stores_cubit/get_stores_cubit.dart';
import 'package:telefood/featuers/shop/data/repo/shop_repo.dart';
import 'package:telefood/featuers/shop/data/repo/shop_repo_impl.dart';
import 'package:telefood/featuers/shop/presentation/manager/order_cubit/order_cubit.dart';
import 'package:telefood/featuers/shop/presentation/manager/shop_cubit/get_products_cubit.dart';

ApiService apiService = ApiService(Dio());

final AuthRepo authRepo = AuthRepoImple(apiService: apiService);
final HomeRepo homeRepo = HomeRepoImpl(apiService: apiService);
final ShopRepo shopRepo = ShopRepoImpl(apiService: apiService);
final UserinfoRepo userinfoRepo = UserinfoRepo(apiService);
final SearchRepo searchRepo = SearchRepo(apiService);
final CategoryRepo repo = CategoryRepo(apiService);
final CartRepo cartRepo = CartRepoImpl(apiService: apiService);
final FavRepoImpl favRepo = FavRepoImpl(apiService);

List<SingleChildWidget> providers = [
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
  BlocProvider(
    create: (context) => CategoryCubit(repo)..getCategory(),
  ),
  BlocProvider(
    create: (context) => OrderCubit(shopRepo),
  ),
  BlocProvider(
    create: (context) => CartCubit(cartRepo),
  ),
  BlocProvider(
    create: (context) => GetFavouriteCubit(favRepo)..getFavouiteProds(),
  )
];
