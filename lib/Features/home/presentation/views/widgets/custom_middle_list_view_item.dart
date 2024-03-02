import 'package:flutter/material.dart';
import 'package:restaurant_booking_app/core/utils/styles.dart';

class CustomMiddleListViewItem extends StatelessWidget {
  const CustomMiddleListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .37,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: const Color(0xffFFFFFF)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * .37,
            child: Image.asset('assets/images/home/Mask Group.png',
                fit: BoxFit.fitWidth),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Chicken Biryani',
            style: Styles.textStyle16Smei,
          ),
          const SizedBox(height: 4),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/home/Frame.png',
                width: 13,
                height: 13,
              ),
              const SizedBox(
                width: 6,
              ),
              const Expanded(
                child: Text(
                  'Ambrosia Hotel & Restaurant',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff6B7280),
                  ),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
