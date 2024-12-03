import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';

class RstaurantInfoPresentaion extends StatelessWidget {
  const RstaurantInfoPresentaion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        width: double.infinity,
        height: 190,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
              image: AssetImage('assets/images/Rest.jpg'), fit: BoxFit.cover),
        ),
        child: const Padding(
          padding: EdgeInsets.only(left: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sham Foods',
                style: kMvBoli24WithShadow,
              ),
              Text('Damascus_Almidan', style: kMvBoli20WithShadow),
              Row(
                children: [
                  Text('4.5', style: kMvBoli20WithShadow),
                  SizedBox(
                    width: 3,
                  ),
                  Icon(
                    Icons.star_rate_rounded,
                    color: kTextColor,
                    size: 24,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
