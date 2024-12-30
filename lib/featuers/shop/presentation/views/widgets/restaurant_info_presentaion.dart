import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/featuers/home/data/models/store_model/datum.dart';

class RstaurantInfoPresentaion extends StatelessWidget {
  const RstaurantInfoPresentaion({
    super.key,
    required this.data,
  });
  final Datum data;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        width: double.infinity,
        height: 190,
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              opacity: .6,
              image: NetworkImage(data.imageUrl!),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                data.name!,
                style: kMvBoli24WithShadow,
              ),
              Row(
                children: [
                  Text(data.locations![0].location!,
                      style: kMvBoli20WithShadow),
                  const SizedBox(width: 3),
                  const Icon(Icons.location_on, color: kTextColor, size: 24)
                ],
              ),
              Row(
                children: [
                  Text(data.rate!, style: kMvBoli20WithShadow),
                  const SizedBox(
                    width: 3,
                  ),
                  const Icon(
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
