// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    Key? key,
    required this.image,
    required this.width,
  }) : super(key: key);

  final String image;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: kSecBackgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Image.asset(
        image,
        fit: BoxFit.contain,
      ),
    );
  }
}
