
import 'package:flutter/material.dart';
import 'package:restaurant_booking_app/constants.dart';

class CustomMapAppBar extends StatelessWidget {
  const CustomMapAppBar({super.key, this.fontSize=12, this.color=kSecondaryColor,});

final double fontSize;
final Color color;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
          onTap: () {},
          child: Column(
            children: [
              Row(
                 children: [
                  Image.asset('assets/images/home/Frame.png'),
                 const SizedBox(
                    width: 6,
                  ),
                  Text('Agrabad 435, Chittagong',style: TextStyle(
                    fontSize: fontSize,
                    fontWeight: FontWeight.w500,
                    color: color,
                  ),
                 ),
                 ],
              ),
            ],
          ),
        );
  }
}