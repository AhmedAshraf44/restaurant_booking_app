import 'package:flutter/material.dart';
import 'package:restaurant_booking_app/Features/booking/presentation/view/widgets/custom_details_restaurant.dart';
import 'package:restaurant_booking_app/constants.dart';
import 'package:restaurant_booking_app/core/utils/styles.dart';
import 'package:restaurant_booking_app/core/utils/widgets/custom_card.dart';
import 'package:restaurant_booking_app/core/utils/widgets/custom_elevated_button.dart';

import '../../../../registration/presentation/views/widgets/custom_text_widget.dart';

class DetailsRestaurantViewBody extends StatelessWidget {
  const DetailsRestaurantViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(
            top: 8,
            bottom: 15,
          ),
          child: CustomDetailsRestaurant(),
        ),
        // Container(
        //     decoration: const BoxDecoration(
        //         borderRadius: BorderRadius.only(
        //             topLeft: Radius.circular(30),
        //             topRight: Radius.circular(30)),
        //         color: Color(0xffFFFFFF)),
        //     child: const CustomListOtherRestaurant()),
      ],
    );
  }
}

class CustomListOtherRestaurant extends StatelessWidget {
  const CustomListOtherRestaurant({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      fit: StackFit.passthrough,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 22, top: 20, bottom: 21, right: 24),
          child: CustomTextwidget(
              textTop: 'List other restaurant',
              textBottom: 'check the menu at this restaurant',
              styleTextBottom: Styles.textStyle10),
        ),
        CustomListOtherRestaurantItem(),
        Positioned(bottom: 0, height: 85, child: CustomButtomBook()),
      ],
    );
  }
}

class CustomListOtherRestaurantItem extends StatelessWidget {
  const CustomListOtherRestaurantItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: MediaQuery.of(context).size.height*.371,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              bottom: 6,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 18,
                right: 18,
              ),
              child: CustomCard(
                textButton: 'Check',
                onPressed: () {},
              ),
            ),
          );
        },
      ),
    );
  }
}

class CustomButtomBook extends StatelessWidget {
  const CustomButtomBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: Color(0xffFFFFFF)),
      child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 72, vertical: 26),
          child: CustomElevatedButton(
              textButton: 'Booking',
              height: 33,
              width: 232,
              backgroundColor: kPrimaryColor,
              textColor:  Color(0xffFFFFFF))
          // ElevatedButton(
          //       onPressed: () {},
          //       style: ElevatedButton.styleFrom(
          //           minimumSize: const Size(232, 33),
          //           backgroundColor: kPrimaryColor,
          //           shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(10))),

          //       child: Text(
          //         'Booking',
          //         style: Styles.textStyle12.copyWith(
          //           color:const Color(0xffFFFFFF),
          //           fontWeight: FontWeight.w600,
          //         ),
          //       ),),
          ),
    );
  }
}
