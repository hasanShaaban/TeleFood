import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telefood/core/data/category/category_cubit/category_cubit.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/featuers/home/presentation/manager/stores_cubit/get_stores_cubit.dart';

class CustomDropDownCategoryButton extends StatelessWidget {
  const CustomDropDownCategoryButton({
    super.key,
    required this.hint,
  });
  final String hint;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      builder: (context, state) {
        if (state is CategorySuccess) {
          var data = state.categoryModel.data;
          List<String> categorise = [];
          for (var value in data!) {
            categorise.add(value.type!);
          }
          categorise.add('all');
          return Container(
            height: 33,
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12, spreadRadius: 3, blurRadius: 6)
                ],
                color: kSecondaryColor,
                borderRadius: BorderRadius.circular(17),
                border: Border.all(color: kWhiteColor, width: 1)),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                  alignment: AlignmentDirectional.centerEnd,
                  iconSize: 45,
                  iconEnabledColor: kWhiteColor,
                  icon: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: SvgPicture.asset(
                      'assets/images/Path 21.svg',
                    ),
                  ),
                  hint: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 11),
                    child: Text(
                      hint,
                      style: kMvBoli18.copyWith(color: kWhiteColor),
                    ),
                  ),
                  borderRadius: BorderRadius.circular(17),
                  items: categorise.map((String items) {
                    return DropdownMenuItem(value: items, child: Text(items));
                  }).toList(),
                  onChanged: (String? category) {
                    BlocProvider.of<GetStoresCubit>(context)
                        .getStoresByCategory(category!);
                  }),
            ),
          );
        } else if (state is CategoryFailuer) {
          return Container(
            height: 33,
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12, spreadRadius: 3, blurRadius: 6)
                ],
                color: kSecondaryColor,
                borderRadius: BorderRadius.circular(17),
                border: Border.all(color: kWhiteColor, width: 1)),
            child: DropdownButtonHideUnderline(
                child: DropdownButton(
              alignment: AlignmentDirectional.centerEnd,
              iconSize: 45,
              iconEnabledColor: kWhiteColor,
              icon: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SvgPicture.asset(
                  'assets/images/Path 21.svg',
                ),
              ),
              hint: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 11),
                child: Text(
                  hint,
                  style: kMvBoli18.copyWith(color: kWhiteColor),
                ),
              ),
              borderRadius: BorderRadius.circular(17),
              items:const [
                 DropdownMenuItem(child: Text('No category to show'))
              ],
              onChanged: (value) {},
            )),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
