import 'package:flutter/widgets.dart';
import 'package:telefood/core/widgets/appBar/main_appbar.dart';

class ShopView extends StatelessWidget {
  const ShopView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: CustomScrollView(
      slivers: [
        MainAppBar(minAppBarHeight: 95,)
      ],
    ));
  }
}