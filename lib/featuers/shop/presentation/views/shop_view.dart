import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/featuers/cart/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:telefood/featuers/home/data/models/store_model/store_data.dart';
import 'package:telefood/featuers/shop/presentation/views/widgets/shop_view_body.dart';

class ShopView extends StatelessWidget {
  const ShopView({super.key, required this.data});
  final StoreData data;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ShopViewBody(data: data),
      floatingActionButton: const CartButton(),
    ));
  }
}

class CartButton extends StatelessWidget {
  const CartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartCubit, CartState>(
      listener: (context, state) {
        if(state is CartFailuer){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.errorMessage)));
        }
      },
      builder: (context, state) {
        return ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: const WidgetStatePropertyAll(kSecondaryColor),
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(27)))),
            child: SizedBox(
              height: 55,
              width: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'My Cart ',
                    style: kMvBoli18,
                  ),
                  SizedBox(
                    child: state is CartLoading ? const CircularProgressIndicator(strokeWidth: 2):
                    state is CartSuccess ? Text(state.response.data!.length.toString(), style: kMvBoli18.copyWith(color: kTextColor),):
                    const Icon(Icons.shopping_cart_outlined) 
                  )
                ],
              ),
            ));
      },
    );
  }
}
