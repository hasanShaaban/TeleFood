import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:telefood/core/providers/basket_provider.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/core/widgets/appBar/main_appbar.dart';
import 'package:telefood/featuers/shop/data/models/products_model/products_data.dart';
import 'package:telefood/featuers/shop/presentation/manager/order_cubit/order_cubit.dart';
import 'package:telefood/featuers/shop/presentation/views/widgets/description_section.dart';
import 'package:telefood/featuers/shop/presentation/views/widgets/image_section.dart';
import 'package:telefood/featuers/shop/presentation/views/widgets/submit_button.dart';
import 'package:telefood/featuers/shop/presentation/views/widgets/total_price_section.dart';
import 'package:telefood/featuers/shop/presentation/views/widgets/user_order_info.dart';

class OrderViewBody extends StatelessWidget {
  const OrderViewBody({super.key, required this.data});

  final ProductsData data;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OrderCubit, OrderState>(
      listener: (context, state) {
        if(state is OrderSuccess){
          showDialog(context: context, builder:(context){
            return AlertDialog(
              icon: const Icon(Icons.check_circle_rounded, size: 24),
              iconColor: Colors.green,
              elevation: 1,
              backgroundColor: kWhiteColor,
              content: Text(state.response.message!),
              actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child:const Text('OK'),
                      ),
                    ],
            );
          });
        }else if(state is OrderFailuer){
          showDialog(context: context, builder:(context){
            return AlertDialog(
              icon: const Icon(Icons.info, size: 24),
              iconColor: kSecondaryColor,
              elevation: 3,
              backgroundColor: kWhiteColor,
              content: Text(state.errorMessage),
              actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child:const Text('OK'),
                      ),
                    ],
            );
          });
        }
      },
      builder: (context, state) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => BasketProvider())
          ],
          child: Stack(children: [
            CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                const MainAppBar(minAppBarHeight: 95),
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      ImageSection(urlImage: data.imgeUrl!),
                      DescriptionSection(data: data),
                      const Divider(
                        thickness: 2,
                        indent: 55,
                        endIndent: 55,
                      ),
                      UserOrderInfo(data: data),
                      const Divider(
                        thickness: 2,
                        indent: 55,
                        endIndent: 55,
                      ),
                      const TotalPriceSection(),
                      const SizedBox(height: 10),
                      const SubmitButton(),
                      const SizedBox(height: 10),
                    ],
                  ),
                )
              ],
            ),
            Center(
              child: (state is OrderLoading)
                  ? const CircularProgressIndicator()
                  : null)
          ]),
        );
      },
    );
  }
}
