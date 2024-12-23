import 'package:flutter/material.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
      child: Image(
        height: 80,
        width: 80,
        image: AssetImage(
          'assets/images/teleFood_log_min.png',
        ),
      ),
    );
  }
}
