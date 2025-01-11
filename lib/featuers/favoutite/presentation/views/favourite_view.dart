import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/core/widgets/appBar/main_appbar.dart';
import 'package:telefood/featuers/favoutite/presentation/manager/get_favourite_cubit/get_favourite_cubit.dart';
import 'package:telefood/featuers/shop/presentation/views/widgets/meal_card.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: FavouriteViewBody(),
    ));
  }
}

class FavouriteViewBody extends StatelessWidget {
  const FavouriteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetFavouriteCubit, GetFavouriteState>(
      builder: (context, state) {
        if (state is GetFavouriteSuccess) {
          return CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              const MainAppBar(),
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(23),
                  child: Row(
                    children: [
                      Icon(
                        Icons.favorite,
                        color: kSecondaryColor,
                      ),
                      Text(
                        'Favourite menu',
                        style: kMvBoli20,
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 23),
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                            itemBuilder: (context, index) =>
                                MealCard(data: state.response.data![index])),
                      ],
                    ),
                  ),
                ),
              )
            ],
          );
        }else if (state is GetFavouriteFailuer){
          return Center(child: Text(state.errorMessage));
        }else{
          return const Center(child: CircularProgressIndicator());
        }
        
      },
    );
  }
}
