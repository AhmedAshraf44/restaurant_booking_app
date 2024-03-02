import 'package:flutter/material.dart';
import 'package:restaurant_booking_app/core/utils/styles.dart';

import '../../../../../constants.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key,
      required this.onTap,
      required this.text,
      required this.colorButton,
      required this.colorText});

  final void Function()? onTap;
  final String text;
  final Color colorButton;
  final Color colorText;
  @override
  Widget build(BuildContext context) {
    return TextButton(
    //  highlightColor:  Colors.blue.withOpacity(0.3),
      onPressed: onTap,
      style: TextButton.styleFrom(
        fixedSize: Size(MediaQuery.of(context).size.width * kWidthButon, kHeightButton),
        backgroundColor:colorButton ,
        shape: RoundedRectangleBorder(borderRadius:  BorderRadius.circular(15),),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Image.asset('assets/images/register/ic_google.png',width: 20,height: 20,),
        const SizedBox(
          width: 24,
        ),
        Text(text,style: Styles.textStyle14.copyWith(
         color: colorText,
         fontWeight: FontWeight.w700, 
        ),),
      ],),
    );
  }
}