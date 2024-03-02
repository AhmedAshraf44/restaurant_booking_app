import 'package:flutter/material.dart';
import 'package:restaurant_booking_app/constants.dart';
import 'package:restaurant_booking_app/core/utils/styles.dart';
import 'package:restaurant_booking_app/core/utils/widgets/custom_elevated_button.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    this.elevation,
    required this.textButton,
    this.onPressed,
  });
  final String textButton;
  final double? elevation;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      color: const Color(0xffFFFFFF),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        minVerticalPadding: 15,
        leading: Image.asset(
          'assets/images/home/Rectangle 387.png',
        ),
        title: const Text(
          'Hotel Zaman Restaurant',
          style: Styles.textStyle16Smei,
        ),
        subtitle: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/home/Frame.png',
            ),
            const SizedBox(
              width: 6,
            ),
            const Expanded(
              child: Text(
                'kazi Deiry, Taiger Pass Chittagong',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: kFourthColor,
                ),
                maxLines: 2,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            CustomElevatedButton(
              elevation: elevation,
              textButton: textButton,
              onPressed: onPressed,
              width: 100,
              height: 38,
              backgroundColor: kPrimaryColor,
              textColor: const Color(0xffFFFFFF),
            )
          ],
        ),
      ),
    );
  }
}
