import 'package:flutter/material.dart';
import 'package:restaurant_booking_app/Features/auth/presentation/views/widgets/custom_text_button.dart';
import 'package:restaurant_booking_app/core/utils/widgets/custom_button.dart';
import 'package:restaurant_booking_app/constants.dart';

import '../../../../../core/utils/widgets/custom_all_content_text_form_field.dart';

class CreateAcountTab extends StatelessWidget {
  const CreateAcountTab({
    super.key,
    required this.onPressedRegistration,
    this.colorButton = kThirdColor,
    this.colorText = kSecondaryColor,
    this.onChanged,
    this.colorTopTextFeild,
    this.onPressed,
    this.suffixIcon = Icons.visibility_off,
    required this.prefixIconColor,
    this.suffixIconColor = Colors.black,
    this.obscureText = false,
  });

  final void Function()? onPressedRegistration;
  final Color colorButton;
  final Color colorText;
  final void Function(String)? onChanged;
  final Color? colorTopTextFeild;
  final void Function()? onPressed;
  final IconData suffixIcon;
  final Color prefixIconColor;
  final Color suffixIconColor;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       const  Spacer(
          flex: 2,
         ),
        CustomAllContentTextFormField(
          textFormField: 'Enter your full name ',
          topTextFeild: 'Full Name',
          colorTopTextFeild: colorTopTextFeild,
          onChanged: onChanged,
          prefixIcon: Icons.person_2_rounded,
          prefixIconColor: prefixIconColor,
        ),
        const SizedBox(
          height: 16,
        ),
        CustomAllContentTextFormField(
          textFormField: 'Eg namaemail@emailkamu.com ',
          topTextFeild: 'Email address',
          colorTopTextFeild: colorTopTextFeild,
          onChanged: onChanged,
          prefixIcon: Icons.email_outlined,
          prefixIconColor: prefixIconColor,
        ),
        const SizedBox(
          height: 16,
        ),
        CustomAllContentTextFormField(
          textFormField: '**** **** **** ',
          topTextFeild: 'Password',
          colorTopTextFeild: colorTopTextFeild,
          onChanged: onChanged,
          prefixIcon: Icons.password,
          prefixIconColor: prefixIconColor,
          obscureText: obscureText,
          suffixIcon: suffixIcon,
          suffixIconColor: suffixIconColor,
          onPressed: onPressed,
        ),
       const Spacer(
          flex: 3,
        ),
        Center(
            child: CustomButton(
                onPressed: onPressedRegistration,
                text: 'Registration',
                colorButton: colorButton,
                colorText: colorText)),
       const Spacer(),
        Center(
          child: CustomTextButton(
            onTap: () {},
            text: 'Sign up with Google',
            colorText: Colors.black,
            colorButton: kThirdColor,
          ),
        ),
        const Spacer( flex: 2,),
      ],
    );
  }
}
