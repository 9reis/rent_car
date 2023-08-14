import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "We Bring The Best Car For You As An ",
        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              color: Colors.white,
              letterSpacing: 1.2,
              fontWeight: FontWeight.bold,
            ),
        children: [
          TextSpan(
            text: 'Enthusiast',
            style: TextStyle(
              color: kYellowColor,
            ),
          ),
        ],
      ),
    );
  }
}
