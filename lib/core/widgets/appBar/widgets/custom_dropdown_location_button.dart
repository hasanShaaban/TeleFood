import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telefood/core/data/governorates/governorates.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/featuers/home/presentation/manager/stores_cubit/get_stores_cubit.dart';

class CustomDropDownLocationButton extends StatelessWidget {
  const CustomDropDownLocationButton({
    super.key,
    required this.hint,
  });
  final String hint;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetStoresCubit, GetStoresState>(
      builder: (context, state) {
        if (state is GetStoresSuccess || state is GetStoresLoading) {
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
                  items: Governorates.allGovernorates.map((String items) {
                    return DropdownMenuItem(value: items, child: Text(items));
                  }).toList(),
                  onChanged: (String? location) {
                    BlocProvider.of<GetStoresCubit>(context)
                        .getStoresByLocation(location!);
                  }),
            ),
          );
        } else if (state is GetStoresFailuer) {
          return Text(state.errorMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
