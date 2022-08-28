import 'package:flutter/material.dart';
import 'package:flutter_practice/modules/bmi_cal/constants/constants.dart';

class SliderComponent extends StatelessWidget {
  final int currentHeight;
  final Function(double) onSliderChange;

  const SliderComponent({
    required this.currentHeight,
    required this.onSliderChange,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'HEIGHT',
          style: kLabelTextStyle,
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              currentHeight.toString(),
              style: kTitleTextStyle,
            ),
            Text(
              "cm",
              style: kLabelTextStyle,
            ),
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            inactiveTrackColor: kLabelTextColor,
            activeTrackColor: Colors.white,
            thumbColor: Color(0xffEB1555),
            overlayColor: Color(0x29EB1555),
            thumbShape: RoundSliderThumbShape(
              enabledThumbRadius: 16,
            ),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
          ),
          child: Slider(
            min: 60,
            max: 220,
            value: currentHeight.toDouble(),
            onChanged: onSliderChange,
          ),
        )
      ],
    );
  }
}
