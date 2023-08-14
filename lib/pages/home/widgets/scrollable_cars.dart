import 'package:flutter/material.dart';

import '../../../models/car.dart';
import 'car_card.dart';

class ScrollableCars extends StatelessWidget {
  const ScrollableCars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.width * 0.25,
      child: ListView.separated(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return CarCard(
            width: (size.width - 16 * 3) / 2,
            height: ((size.width - 16 * 3) / 2) * 0.4,
            title: cars[index].name,
            subtitle: "${cars[index].price}\$/day",
            image: cars[index].image,
          );
        },
        separatorBuilder: (context, index) => SizedBox(width: 16),
      ),
    );
  }
}
