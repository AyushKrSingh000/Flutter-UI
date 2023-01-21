import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class HouseInfoBox extends StatelessWidget {
  const HouseInfoBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Special Housing Mix",
          style: TextStyle(
            color: kTextColor,
            letterSpacing: 0.8,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(
              Icons.location_on_outlined,
              size: 15,
            ),
            Text(
              "Delhi, India",
              style: TextStyle(
                fontSize: 12,
                color: kTextColor,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.star,
                  size: 28,
                  color: kPrimaryColor,
                ),
                Icon(
                  Icons.star,
                  size: 28,
                  color: kPrimaryColor,
                ),
                Icon(
                  Icons.star,
                  size: 28,
                  color: kPrimaryColor,
                ),
                Icon(
                  Icons.star,
                  size: 28,
                  color: kPrimaryColor,
                ),
                Icon(
                  Icons.star_half,
                  color: kPrimaryColor,
                  size: 28,
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  CupertinoIcons.hand_thumbsup,
                  color: kBlackColor,
                  size: 18,
                ),
                Text(
                  "20",
                  style: TextStyle(
                    fontSize: 15,
                    color: kTextColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  CupertinoIcons.hand_thumbsdown,
                  color: kBlackColor,
                  size: 18,
                ),
                Text(
                  "1",
                  style: TextStyle(
                    fontSize: 15,
                    color: kTextColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
