import 'package:flutter/material.dart';
import 'package:restaurant_booking_app/core/utils/widgets/custom_button.dart';
import 'package:restaurant_booking_app/Features/registration/presentation/views/widgets/custom_text.dart';
import 'package:restaurant_booking_app/Features/registration/presentation/views/widgets/register_bottom_sheet.dart';
import 'package:restaurant_booking_app/constants.dart';
import 'package:restaurant_booking_app/core/utils/styles.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
       // top: 135,
        right: 20,
        left: 20,),
      child: Column(
      //  mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         const Spacer(
            flex: 3,
          ),
          Center(
            child: Image.asset('assets/images/register/Order Success.png'),
          ),
          const SizedBox(
            height: 55,
          ),
          const Text(
            'Welcome',
            style: Styles.textStyle24,
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 44),
            child: Text('Before enjoying Foodmedia services Please register first',
                style: Styles.textStyle14.copyWith(color: kSecondaryColor,fontWeight: FontWeight.w400),
                textAlign: TextAlign.center),
          ),
          // const SizedBox(
          //   height: 100,
          // ),
         const  Spacer(
            flex: 2,
           ),
          CustomButton(
            colorButton: kPrimaryColor,
            text: 'Create Account',
            colorText: Colors.white,
            onPressed: () {
              showModalBottomSheet( 
                isScrollControlled: true,
              shape:const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)
                ),
              ),
              context: context,
               builder: (context) {
                return const RegisterBottomSheet(index: 0,);
                // SizedBox(
                //  height: MediaQuery.of(context).size.height *kWidthButon,
                //   child:  RegisterBottomSheet(index: 0,));
               },);
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
            colorButton: const Color(0xffD1FAE5),
            text: 'Login',
            colorText: kPrimaryColor,
            onPressed: () {
              showModalBottomSheet( 
                isScrollControlled: true,
              shape:const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)
                ),
              ),
              context: context,
               builder: (context) {
                return const RegisterBottomSheet(index:1,);
                // SizedBox(
                // height: MediaQuery.of(context).size.height *kWidthButon,
                //   child:  RegisterBottomSheet(index:1,));
               },);
            },
          ),
          const SizedBox(
            height: 16,
          ),
          const CustomText(),
         const  Spacer(),
        ],
      ),
    );
  }
}

