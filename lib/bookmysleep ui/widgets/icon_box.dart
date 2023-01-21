import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class IconBox extends StatelessWidget {
  IconData icon;
  int num;
  IconBox({super.key, required this.icon, required this.num});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(
        icon,
        size: 22,
        color: kPrimaryColor,
      ),
      const SizedBox(
        width: 5,
      ),
      Text(
        "$num",
        style: TextStyle(
          fontSize: 12,
          color: kTextColor,
          fontWeight: FontWeight.w300,
        ),
      )
    ]);
  }
}
