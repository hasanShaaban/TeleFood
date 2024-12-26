import 'package:flutter/material.dart';

class LOGO extends StatelessWidget {
  const LOGO({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Image.asset(
        'assets/images/teleFood_log_min.png',
        width: 80,
        height: 80,
      ),
    );
  }
}
