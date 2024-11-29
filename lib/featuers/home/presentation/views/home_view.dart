import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';

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
      slivers: [
        SliverAppBar(
            pinned: true,
            expandedHeight: 190,
            collapsedHeight: 95,
            backgroundColor: kPrimeryColor,
            elevation: 500,
            shadowColor: Colors.black,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(38),
                    bottomRight: Radius.circular(38))),
            flexibleSpace: FlexibleSpaceBar(
              background:const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image(image: AssetImage('assets/images/teleFood_log_min.png'), width: 50,),
                )],
              ),
              titlePadding: const EdgeInsets.only(
                  top: 27, left: 27, bottom: 25, right: 26),
              expandedTitleScale: 1,
              title: Align(
                alignment: Alignment.center,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CustomAppBarIconButton(
                      icon: Icons.menu,
                    ),
                    CustomSearchTextField(height: height, width: width),
                    const CustomAppBarIconButton(
                        icon: Icons.notifications_none_outlined)
                  ],
                ),
              ),
            )),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: 200,
              height: 100,
              color: Colors.amber,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: 200,
              height: 100,
              color: Colors.amber,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: 200,
              height: 100,
              color: Colors.amber,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: 200,
              height: 100,
              color: Colors.amber,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: 200,
              height: 100,
              color: Colors.amber,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: 200,
              height: 100,
              color: Colors.amber,
            ),
          ),
        )
      ],
    );
  }
}

class CustomAppBarIconButton extends StatelessWidget {
  const CustomAppBarIconButton({
    super.key,
    required this.icon,
  });
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        padding: EdgeInsets.zero,
        onPressed: () {},
        icon: Icon(
          icon,
          color: kSecondaryColor,
          size: 36,
        ));
  }
}

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * .05,
      width: width * .6,
      child: TextField(
        style: kSearchTextStyle,
        scrollPadding: EdgeInsets.zero,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: kSecondaryColor,
          ),
          contentPadding: const EdgeInsets.only(right: 15),
          filled: true,
          fillColor: kScaffoldColor,
          enabledBorder: buildOutLineInputBorder(),
          focusedBorder: buildOutLineInputBorder(),
          hintText: 'Search',
          hintStyle: kSearchTextStyle.copyWith(color: kSecondaryColor),
        ),
      ),
    );
  }
}

OutlineInputBorder buildOutLineInputBorder() {
  return OutlineInputBorder(
      borderSide: const BorderSide(color: kSecondaryColor, width: 2),
      borderRadius: BorderRadius.circular(18));
}
