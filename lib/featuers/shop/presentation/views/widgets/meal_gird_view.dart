import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/featuers/shop/presentation/manager/shop_cubit/get_products_cubit.dart';
import 'package:telefood/featuers/shop/presentation/views/widgets/loading_view.dart';
import 'package:telefood/featuers/shop/presentation/views/widgets/meal_card.dart';

class MealGridView extends StatelessWidget {
  const MealGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetProductsCubit, GetProductsState>(
      builder: (context, state) {
        if(state is GetProductsSuccess && state.response.data != null){
          return SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('The Menu',
                      style: kMvBoli24.copyWith(color: kPrimeryColor)),
                  const SizedBox(
                    height: 10,
                  ),
                  GridView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: state.response.data!.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisSpacing: 22,
                              crossAxisSpacing: 22,
                              childAspectRatio: 17 / 20,
                              crossAxisCount: 2),
                      itemBuilder: (context, index) => MealCard(data:  state.response.data![index])),
                ],
              ),
            ),
          ),
        );
        }else if(state is GetProductsFailuer){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.errorMessage, style: kCandara18Bold), backgroundColor: Colors.red,));
          return const Center(child: Text('Try again later', style: kMvBoli20,),);
          
        }else{
          return const LoadingView();
        }
      },
    );
  }
}
