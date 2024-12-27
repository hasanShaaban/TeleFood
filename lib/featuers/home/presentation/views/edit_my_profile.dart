import 'package:flutter/material.dart';
import 'package:telefood/core/widgets/appBar/main_appbar.dart';
import 'package:telefood/featuers/home/presentation/views/widgets/edit_user_details.dart';
import 'package:telefood/featuers/home/presentation/views/widgets/top_edit_my_profile.dart';

class EditMyProfile extends StatelessWidget {
  const EditMyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: CustomScrollView(
            slivers: [
              MainAppBar(
                minAppBarHeight: 95,
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [TopEditMyProfile(), EditUserDetails()],
                ),
              )
            ],
          )),
    );
  }
}
