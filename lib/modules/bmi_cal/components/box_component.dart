import 'package:flutter/material.dart';

class BoxComponent extends StatelessWidget {
  final Color color;
  final Widget? boxChild;
  final VoidCallback? onTap;

  const BoxComponent({
    required this.color,
    this.boxChild,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: boxChild,
      ),
    );
  }
}
