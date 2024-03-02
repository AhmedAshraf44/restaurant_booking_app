import 'package:flutter/material.dart';
import 'package:restaurant_booking_app/constants.dart';
import 'widgets/details_restaurant_view_body.dart';

class DetailsRestaurantView extends StatelessWidget {
  const DetailsRestaurantView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:const Color(0xffE5E5E5),
      appBar: AppBar(
        shape:const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15)
          )
        ),
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title:const Text('Details Restaurant',style:TextStyle(
          fontSize: 12,
          color: Color(0xffFFFFFF),
          fontWeight: FontWeight.w600,
        ),),
      ),
      body:const DetailsRestaurantViewBody(),
    );
  }
}