import 'package:flutter/material.dart';


class ImageSection extends StatelessWidget {
  const ImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      decoration:const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            spreadRadius: 5,
            blurRadius: 15,
            offset: Offset(0,7)
          ),
        ]
      ),
      child: Image(
        image: const AssetImage('assets/images/crispy.jpg'),
        width: double.infinity,
        height: height * (27 / 90),
        fit: BoxFit.fill,
      ),
    );
  }
}