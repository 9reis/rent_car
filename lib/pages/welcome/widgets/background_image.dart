import 'package:flutter/material.dart';

class BackgroungImage extends StatelessWidget {
  const BackgroungImage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.45,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/back.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
