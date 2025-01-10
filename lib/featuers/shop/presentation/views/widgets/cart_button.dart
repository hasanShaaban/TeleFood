import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:telefood/core/utils/app_router.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/featuers/cart/presentation/manager/cart_cubit/cart_cubit.dart';

class CartButton extends StatelessWidget {
  const CartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartCubit, CartState>(
      listener: (context, state) {
        if (state is CartFailuer) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errorMessage)));
        }
      },
      builder: (context, state) {
        return ElevatedButton(
            onPressed: () {
              if (state is CartSuccess) {
                GoRouter.of(context)
                    .push(AppRouter.kCartViewRouter, extra: state.response);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text(
                  'There is some thing wrong with your order',
                  style: kMvBoli14,
                )));
              }
            },
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
                      child: state is CartLoading
                          ? const CircularProgressIndicator(strokeWidth: 2)
                          : state is CartSuccess
                              ? Text(
                                  state.response.data!.length.toString(),
                                  style: kMvBoli18.copyWith(color: kTextColor),
                                )
                              : const Icon(Icons.shopping_cart_outlined))
                ],
              ),
            ));
      },
    );
  }
}
