import 'package:flutter/material.dart';
import 'package:telefood/core/widgets/appBar/widgets/custom_dropdown_category_butto.dart';
import 'package:telefood/core/widgets/appBar/widgets/custom_dropdown_location_button.dart';

class HideableAppBarItems extends StatelessWidget {
  const HideableAppBarItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Image(
            image: AssetImage('assets/images/teleFood_log_min.png'),
            width: 50,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 38, bottom: 23, right: 38),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomDropDownLocationButton(hint: 'Location'),
              SizedBox(
                width: 70,
              ),
              CustomDropDownCategoryButton(hint: 'Category'),
            ],
          ),
        )
      ],
    );
  }
}
