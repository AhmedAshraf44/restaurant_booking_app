import 'package:flutter/material.dart';
import 'package:restaurant_booking_app/constants.dart';

class ArrowIcon extends StatelessWidget {
  const ArrowIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.arrow_forward,
      color: kPrimaryColor,
    );
  }
}
