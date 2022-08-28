import 'package:flutter/material.dart';
import 'package:flutter_practice/modules/bmi_cal/constants/constants.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String name;
  final Color iconColor;

  const IconContent({
    required this.icon,
    required this.name,
    required this.iconColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: iconColor,
        ),
        SizedBox(height: 15),
        Text(
          name,
          style: kLabelTextStyle.copyWith(
            color: iconColor,
          ),
        ),
      ],
    );
  }
}
