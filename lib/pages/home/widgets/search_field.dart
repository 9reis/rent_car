import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: size.width * 0.12,
            child: TextField(
              cursorColor: kGreyColor,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefix: Icon(
                  CupertinoIcons.search,
                  color: kGreyColor,
                  size: 30,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 2,
                    color: kGreyColor,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 2,
                    color: kGreyColor,
                  ),
                ),
                labelText: 'Search your dream car',
                labelStyle: TextStyle(
                  color: kGreyColor,
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 16),
        Container(
          height: size.width * 0.12,
          width: size.width * 0.12,
          decoration: BoxDecoration(
            color: kYellowColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(
            'assets/settings.png',
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
