import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telefood/featuers/cart/data/models/cart_response/cart_response.dart';
import 'package:telefood/featuers/cart/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:telefood/featuers/cart/presentation/views/widgets/cart_view_body.dart';

// ignore: must_be_immutable
class CartView extends StatefulWidget {
  CartView({super.key, this.cartinfo});

  CartResponse? cartinfo;

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: BlocListener<CartCubit, CartState>(
        listener: (context, state) {
          if(state is CartSuccess){
           setState(() {
             widget.cartinfo = state.response;
           });
           
          }
        },
        child: CartViewBody(
          cartinfo: widget.cartinfo!,
        ),
      ),
    ));
  }
}
