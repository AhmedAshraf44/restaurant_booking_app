import 'package:flutter/material.dart';
import 'package:restaurant_booking_app/constants.dart';
import 'package:restaurant_booking_app/core/utils/styles.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'By Logging In Or Registering, You Have Agreed To',
              style: Styles.textStyle10,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('The Terms And Conditions ',
                style: Styles.textStyle10.copyWith(
                  color: kPrimaryColor,
                )),
            const Text(
              'And ',
              style: Styles.textStyle10,
            ),
            Text(
              'Privacy Policy.',
              style: Styles.textStyle10.copyWith(
                color: kPrimaryColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
