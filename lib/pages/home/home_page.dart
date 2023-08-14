// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:rent_car/pages/home/widgets/bottom_nav_bar.dart';

import 'package:rent_car/pages/home/widgets/scrollable_cars.dart';
import 'package:rent_car/pages/home/widgets/search_field.dart';
import 'package:rent_car/pages/home/widgets/text_and_more_row.dart';
import 'package:rent_car/pages/home/widgets/top_app_bar.dart';
import 'package:rent_car/utils/colors.dart';

import 'widgets/scrollable_brands.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: body(context),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}

Widget body(BuildContext context) {
  final size = MediaQuery.of(context).size;

  return Column(
    children: [
      Padding(
        padding: EdgeInsets.all(16),
        child: SizedBox(
          height: size.height * 0.25,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopAppBar(),
              Text(
                'Search Your Dream \nSuper Car to Drive',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: kBackgroundColor,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SearchField()
            ],
          ),
        ),
      ),
      SizedBox(height: 16),
      Expanded(
        child: Container(
          width: size.width,
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          ),
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextAndMoreRow(text: 'Top Brands'),
              ScrollableBrands(),
              TextAndMoreRow(text: 'Recomendations'),
              SizedBox(height: 12),
              ScrollableCars()
            ],
          ),
        ),
      ),
    ],
  );
}
