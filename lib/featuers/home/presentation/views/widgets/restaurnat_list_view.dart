import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/core/widgets/appBar/search_cubit/search_cubit.dart';
import 'package:telefood/featuers/home/data/models/store_model/store_data.dart';
import 'package:telefood/featuers/home/presentation/manager/stores_cubit/get_stores_cubit.dart';
import 'package:telefood/featuers/home/presentation/views/widgets/loading_view.dart';
import 'package:telefood/featuers/home/presentation/views/widgets/restauran_card.dart';

class RestaurantListView extends StatelessWidget {
  const RestaurantListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if(state is SearchInitial){
          return BlocBuilder<GetStoresCubit, GetStoresState>(
          builder: (context, state) {
            if (state is GetStoresSuccess) {
              return SliverToBoxAdapter(
                child: Expanded(
                  child: Column(
                    children: [
                      ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) =>
                            RestaurantCard(data: state.response.data![index]),
                        itemCount: state.response.data!.length,
                      ),
                    ],
                  ),
                ),
              );
            } else if (state is GetStoresFailuer) {
              return Center(
                child: Text(state.errorMessage),
              );
            } else {
              return const LoadingView();
            }
          },
        );
        }else if(state is SearchSuccess){
          var data = state.searchModel.data!.toJson();
          StoreData storeData = StoreData.fromJson(data);
          return SliverToBoxAdapter(child: RestaurantCard(data: storeData));
        }else if(state is SearchFailuer){
          return SliverToBoxAdapter(child: Center(child: Text(state.errorMessage, style: kMvBoli20,),));
        }else{
          return const SliverToBoxAdapter(
            child: Column(
              children: [
                LinearProgressIndicator(),
              ],
            ),
          );
        }
      },
    );
  }
}
