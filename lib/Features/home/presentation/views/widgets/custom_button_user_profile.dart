import 'package:flutter/material.dart';

class CustomButtonUserProfile  extends StatelessWidget {
  const CustomButtonUserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: const CircleAvatar(radius: 16,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/images/home/Ellipse 4.png'),
            ),
    );
  }
}