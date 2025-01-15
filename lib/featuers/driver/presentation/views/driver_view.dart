
import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/core/widgets/appBar/main_appbar.dart';
import 'package:telefood/featuers/driver/presentation/views/linear_timer.dart';

class DriverView extends StatelessWidget {
  const DriverView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: DriverViewBody(),
    ));
  }
}

class DriverViewBody extends StatelessWidget {
  const DriverViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const MainAppBar(minAppBarHeight: 95),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 23),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('My Orders',
                    style: kCandara18Bold.copyWith(color: kPrimeryColor)),
                Row(
                  children: [
                    const SizedBox(width: 10),
                    const Icon(
                      Icons.timelapse_rounded,
                      color: kSecondaryColor,
                      size: 18,
                    ),
                    Text(
                      'Preparing: ',
                      style: kMvBoli18.copyWith(color: kSecondaryColor),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 18),
            child: SizedBox(height: 180, child: PreperingOrdersListView()),
          ),
        ),
      ],
    );
  }
}

class PreperingOrdersListView extends StatelessWidget {
  const PreperingOrdersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: 1,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(8),
          width: 300,
          decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(22),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300, spreadRadius: 4, blurRadius: 6)
              ]),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('location:',
                            style: kMvBoli18.copyWith(color: kPrimeryColor)),
                        Text('driver name:',
                            style: kMvBoli18.copyWith(color: kPrimeryColor)),
                        Text('motor number:',
                            style: kMvBoli18.copyWith(color: kPrimeryColor)),
                        Text('Order ID:',
                            style: kMvBoli18.copyWith(color: kPrimeryColor))
                      ],
                    ),
                    const SizedBox(width: 4),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Damascus/almazzeh',
                            style: kMvBoli18.copyWith(color: kSecondaryColor)),
                        Text('fakher',
                            style: kMvBoli18.copyWith(color: kSecondaryColor)),
                        Text('112233',
                            style: kMvBoli18.copyWith(color: kSecondaryColor)),
                        Text('17',
                            style: kMvBoli18.copyWith(color: kSecondaryColor)),
                      ],
                    )
                  ],
                ),
                const LinearTimer()
              ],
            ),
          ),
        );
      },
    );
  }
}

/////provider/////


