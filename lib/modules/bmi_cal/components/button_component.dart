import 'package:flutter/material.dart';
import 'package:flutter_practice/modules/bmi_cal/constants/constants.dart';

class ButtonComponent extends StatelessWidget {
  final String buttonTitle;
  final int selectedValue;
  final VoidCallback onMinusPress;
  final VoidCallback onPlusPress;

  const ButtonComponent({
    required this.buttonTitle,
    required this.selectedValue,
    required this.onMinusPress,
    required this.onPlusPress,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          buttonTitle,
          style: kLabelTextStyle,
        ),
        SizedBox(height: 8),
        Text(
          selectedValue.toString(),
          style: kTitleTextStyle,
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _InputButton(
              icon: Icons.remove,
              onButtonPress: onMinusPress,
            ),
            SizedBox(
              width: 8,
            ),
            _InputButton(
              icon: Icons.add,
              onButtonPress: onPlusPress,
            ),
          ],
        )
      ],
    );
  }
}

class _InputButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onButtonPress;

  const _InputButton({
    required this.icon,
    required this.onButtonPress,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0,
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xff4C4F5E),
      onPressed: onButtonPress,
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
