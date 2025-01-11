import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telefood/bloc_providers.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/core/utils/user_token.dart';
import 'package:telefood/featuers/favoutite/presentation/manager/get_favourite_cubit/get_favourite_cubit.dart';
import 'package:telefood/featuers/shop/data/models/products_model/products_data.dart';

class DescriptionSection extends StatefulWidget {
  const DescriptionSection({super.key, required this.data});

  final ProductsData data;

  @override
  State<DescriptionSection> createState() => _DescriptionSectionState();
}

class _DescriptionSectionState extends State<DescriptionSection> {
  Color color = kPrimeryColor.withOpacity(.4);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('order description :',
                  style: kCandara18Bold.copyWith(color: kTextColor)),
              IconButton(
                  onPressed: () async {
                    if (!favorite.contains(widget.data)) {
                      var response = await apiService.addToFavourite(
                          endPoints: 'favorite/add?',
                          productId: widget.data.productId!);
                      if (response.isNotEmpty) {
                        setState(() {
                          color = kSecondaryColor;
                        });
                      }
                    } else {
                      favorite.remove(widget.data);
                      var response = await apiService.deleteFromFavourite(
                          endPoints: 'favorite/delete/',
                          productId: widget.data.productId!);
                      print(response);
                      if (response.isNotEmpty) {
                        setState(() {
                          color = kPrimeryColor.withOpacity(.4);
                        });
                      }
                    }
                    setState(() {
                      BlocProvider.of<GetFavouriteCubit>(context)
                        .getFavouiteProds();
                    });
                  },
                  icon: Icon(
                    Icons.favorite_border_outlined,
                    color: favorite.contains(widget.data)
                        ? kSecondaryColor
                        : color,
                    size: 30,
                  ))
            ],
          ),
          Text(widget.data.productName!,
              style: kMvBoli30.copyWith(color: kSecondaryColor)),
          Text(
            widget.data.description!,
            style: kMvBoli14.copyWith(color: kPrimeryColor),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Text('Single price: ${widget.data.price}',
                  style: kMvBoli24.copyWith(color: kPrimeryColor)),
              Text('S.P', style: kMvBoli24.copyWith(color: kTextColor))
            ],
          )
        ],
      ),
    );
  }
}
