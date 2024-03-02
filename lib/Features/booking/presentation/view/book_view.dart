import 'package:flutter/material.dart';
import 'package:restaurant_booking_app/Features/booking/presentation/view/widgets/book_view_body.dart';
import 'package:restaurant_booking_app/constants.dart';
import 'package:restaurant_booking_app/core/utils/styles.dart';
import 'package:restaurant_booking_app/core/utils/widgets/custom_elevated_button.dart';

class BookView extends StatelessWidget {
  const BookView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
      children: [
        ClipRRect(
          borderRadius:const BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
          child: Container(
          width: double.infinity,
          height: 67,
          color: kPrimaryColor,
          child: Center(child: Text('Booking History',style: Styles.textStyle16Smei.copyWith(color:const Color(0xffFFFFFF),),)),
          ),
        ),
       const SizedBox(height: 24,),
        const Expanded(
          child:  BookViewBody(),
          ),
        const SizedBox(height: 12,),
       const CustomElevatedButton(textButton: ' +  Booking more ', height: 43, width: 182, backgroundColor:   Color(0xffFFFFFF), textColor: kFourthColor),
          // ElevatedButton(
          //       onPressed: () {},
          //       style: ElevatedButton.styleFrom(
          //           minimumSize: const Size(182, 43),
          //           backgroundColor: const Color(0xffFFFFFF),
          //           shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(10))),
        
          //       child: Text(
          //         ' +  Booking more ',
          //         style: Styles.textStyle12.copyWith(
          //           color:kFourthColor,
          //           fontWeight: FontWeight.w600,
          //         ),
          //       ),),
              const  SizedBox(height: 12,),
      ],
       ),
    );
  }
}