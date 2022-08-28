import 'package:flutter/material.dart';
import 'package:flutter_practice/modules/bmi_cal/constants/constants.dart';

class BottomComponent extends StatelessWidget {
  final String title;

  const BottomComponent({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      color: kBottomBoxColor,
      width: double.infinity,
      height: kBottomBoxHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: kLabelTextStyle.copyWith(
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
