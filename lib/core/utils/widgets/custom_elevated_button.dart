import 'package:flutter/material.dart';
import 'package:restaurant_booking_app/core/utils/styles.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key,
      required this.textButton,
      this.elevation,
      this.onPressed,
      required this.height,
      required this.width,
      required this.backgroundColor,
      required this.textColor});
  final String textButton;
  final double? elevation;
  final double height;
  final double width;
  final void Function()? onPressed;
  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          minimumSize: Size(width, height),
          backgroundColor: backgroundColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
      child: Text(
        textButton,
        style: Styles.textStyle12.copyWith(
          color: textColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
