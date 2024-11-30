import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/core/widgets/appBar/main_appbar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: HomeViewBody(),
    ));
  }
}

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        MainAppBar(height: height, width: width),
        SliverToBoxAdapter(
          child: Expanded(
            child: Column(
              children: [
                ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => const RestaurantCard(),
                  itemCount: 10,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 10),
      child: Container(
        height: 135,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5,
                  spreadRadius: 2,
                  offset: Offset(0, 4))
            ],
            color: kScaffoldColor),
        child: Padding(
          padding: const EdgeInsets.only(left: 14),
          child: Row(
            children: [
              Container(
                width: 132,
                height: 88,
                decoration: BoxDecoration(
                  border: Border.all(color: kPrimeryColor, width: 2),
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/Rest.jpg'),
                  ),
                ),
              ),
              const SizedBox(width: 16,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('Sham Foods', style: kCandara18Bold.copyWith(color: kPrimeryColor),),
                      const SizedBox(width: 60),
                      GestureDetector(onTap: (){} ,child:const Icon(Icons.favorite_border_rounded, size: 18,))
                    ],
                  ),
                  const RestaurantCardDetails(info: 'Location:', value: 'Damascus',),
                  const RestaurantCardDetails(info: 'Category:', value: 'Fast Food',),
                  const RestaurantCardDetails(info: 'Rate:', value: '4.5',icon: Icons.star_sharp,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RestaurantCardDetails extends StatelessWidget {
  const RestaurantCardDetails({
    super.key, required this.info, required this.value, this.icon,
  });
  final String info;
  final String value;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(info, style: kMvBoli14.copyWith(color: kSecondaryColor)),
        const SizedBox(width: 20,),
        Text(value, style: kMvBoli14.copyWith(color: kPrimeryColor.withOpacity(0.4))),
        Icon(icon, color: kTextColor,size: 14,)
      ],
    );
  }
}
