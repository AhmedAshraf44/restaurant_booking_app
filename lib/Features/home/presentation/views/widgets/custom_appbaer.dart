import 'package:flutter/material.dart';
import 'package:restaurant_booking_app/Features/home/presentation/views/widgets/custom_button_user_profile.dart';
import 'package:restaurant_booking_app/Features/home/presentation/views/widgets/custom_map_app_bar.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,
      top: 20,bottom: 10,
      ),
      child: Row(
        children: [
          IconButton(onPressed: (){},
           icon:Image.asset('assets/images/menu_icon.png'), 
          ),
          const Spacer(),
          const CustomMapAppBar(),
          const Spacer(),
          const CustomButtonUserProfile(),
        ],
      ),
    );
  }
}

