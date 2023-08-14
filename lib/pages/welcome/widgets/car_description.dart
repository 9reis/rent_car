import 'package:flutter/material.dart';
import 'package:rent_car/pages/welcome/widgets/title_text.dart';

class CarDescription extends StatelessWidget {
  const CarDescription({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.7,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleText(),
          SizedBox(height: 16),
          Text(
            'Get experience ridding your dream car, we sill set up the car, you just neet to book and go rock',
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Colors.white, letterSpacing: 1.2, height: 1.3),
          )
        ],
      ),
    );
  }
}
