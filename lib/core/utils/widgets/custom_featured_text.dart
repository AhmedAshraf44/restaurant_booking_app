import 'package:flutter/material.dart';
import 'package:restaurant_booking_app/core/utils/styles.dart';

class CustomFeaturedText extends StatelessWidget {
  const CustomFeaturedText({super.key, required this.text, this.color, this.onTap, this.leftPadding=10, this.rightPadding=10});
  final String text;
  final Color? color;
  final void Function()? onTap;
  final double leftPadding;
  final double rightPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(
        right: rightPadding,
        left: leftPadding,
      ),
      child: GestureDetector(
        onTap:onTap,
        child: Text(
          text,
          style: Styles.textStyle14.copyWith(
            color: color,
          ),
        ),
      ),
    );
  }
}