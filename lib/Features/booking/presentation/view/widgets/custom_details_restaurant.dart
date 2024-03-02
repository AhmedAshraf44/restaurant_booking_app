
import 'package:flutter/material.dart';
import 'package:restaurant_booking_app/Features/home/presentation/views/widgets/custom_map_app_bar.dart';
import 'package:restaurant_booking_app/constants.dart';
import 'package:restaurant_booking_app/core/utils/styles.dart';

class CustomDetailsRestaurant extends StatelessWidget {
  const CustomDetailsRestaurant({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      height: MediaQuery.of(context).size.height * .49,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          left: 18,
          right: 18,
          bottom: 28,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Tava Restaurant',
              style: TextStyle(
                color: Color(0xff1F2937),
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const CustomMapAppBar(fontSize: 12,color: kFourthColor,
            ),
            const SizedBox(
              height: 24,
            ),
            AspectRatio(
              aspectRatio: 4 / 2.5,
              child: Image.asset(
                'assets/images/Rectangle 387 (1).png',
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/images/clock_icon.png'),
                          const SizedBox(
                            width: 4,
                          ),
                         const Text(
                            'Open today',
                            style: Styles.textStyle12Medium
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '10:00 AM - 12:00 PM',
                        style: Styles.textStyle12Smei.copyWith(
                          color: const Color(0xff1F2937),
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Image.asset(
                            'assets/images/directions_black_24dp 1.png',),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(
                          'Visit the Restaurant',
                          style: Styles.textStyle12Smei.copyWith(
                            color: const Color(0xff2C8DFF),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
