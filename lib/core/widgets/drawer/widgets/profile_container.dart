import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/core/utils/user_token.dart';
import 'package:telefood/core/widgets/drawer/cubit/user_info_cubit.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserInfoCubit, UserInfoState>(
      builder: (context, state) {
        if (state is UserInfoSuccess) {
          return Container(
            width: double.infinity,
            height: 320,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(50)),
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      kPrimeryColor,
                      kSecondaryColor,
                    ])),
            child: Padding(
              padding: const EdgeInsets.only(top: 37, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'My Profile',
                    style: kMvBoli24.copyWith(color: kWhiteColor),
                  ),
                  const SizedBox(height: 10),
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: kWhiteColor,
                    backgroundImage: FileImage(File(userImage!)),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Icon(
                        Icons.account_circle_outlined,
                        color: kSecondaryColor,
                        size: 24,
                      ),
                      const SizedBox(width: 5),
                      Text(
                          '${state.response.user!.firstName} ${state.response.user!.lastName}',
                          style: kCandara20.copyWith(color: kWhiteColor)),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Icon(
                        Icons.phone_outlined,
                        color: kSecondaryColor,
                        size: 24,
                      ),
                      const SizedBox(width: 5),
                      Text('${state.response.user!.mobile}',
                          style: kCandara20.copyWith(color: kWhiteColor)),
                    ],
                  ),
                ],
              ),
            ),
          );
        } else if (state is UserInfoFailuer) {
          return Center(
            child: Text(state.errorMessage),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
