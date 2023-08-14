import 'package:flutter/material.dart';
import 'package:rent_car/pages/home/home_page.dart';
import 'package:rent_car/pages/welcome/widgets/background_image.dart';
import 'package:rent_car/utils/colors.dart';

import 'widgets/car_description.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          BackgroungImage(),
          SizedBox(height: 16),
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  width: size.width,
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(height: size.height * 0.5 * 0.2),
                      CarDescription(),
                      ElevatedButton(
                        child: Text(
                          'Get Started',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                color: kBackgroundColor,
                              ),
                        ),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(size.width, size.height * 0.08),
                          backgroundColor: kYellowColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: -size.height * 0.5 * 0.7,
                  left: -size.height * 0.5 * 0.55,
                  child: SizedBox(
                    height: size.height * 0.5,
                    child: Image.asset('assets/welcome.png',
                        fit: BoxFit.fitHeight),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
