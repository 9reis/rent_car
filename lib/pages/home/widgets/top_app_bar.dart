import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      children: [
        Icon(
          Icons.location_on,
          color: kYellowColor,
          size: 30,
        ),
        SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Location',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: kGreyColor,
                  ),
            ),
            Text(
              'Miramar, San Diego',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: kBackgroundColor,
                  ),
            ),
          ],
        ),
        Spacer(),
        CircleAvatar(
          radius: size.width * 0.06,
          backgroundImage: AssetImage('assets/user.jpg'),
        ),
      ],
    );
  }
}
