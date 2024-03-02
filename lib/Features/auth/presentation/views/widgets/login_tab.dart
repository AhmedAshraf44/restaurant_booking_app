import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_booking_app/Features/auth/presentation/views/widgets/custom_text_button.dart';
import 'package:restaurant_booking_app/core/utils/widgets/custom_button.dart';
import 'package:restaurant_booking_app/core/utils/widgets/custom_featured_text.dart';
import 'package:restaurant_booking_app/constants.dart';
import 'package:restaurant_booking_app/core/utils/app_router.dart';

import '../../../../../core/utils/widgets/custom_all_content_text_form_field.dart';

class LoginTab extends StatelessWidget {
  const LoginTab(
      {super.key,
      required this.onPressedLogin,
      required this.colorButton,
      required this.colorText,
      this.onChanged,
      this.colorTopTextFeild,
      required this.prefixIconColor,
      this.suffixIcon = Icons.visibility_off,
      this.suffixIconColor = Colors.black,
      required this.obscureText,
      this.onPressed});

  final void Function()? onPressedLogin;
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
        const Spacer(
          flex: 4,
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
          onPressed: onPressed,
          suffixIconColor: suffixIconColor,
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomFeaturedText(
              text: 'Forget Password?',
              color: kPrimaryColor,
              onTap: () {
                GoRouter.of(context).push(AppRouter.kForgetPasswordView);
              },
            ),
          ],
        ),
        const Spacer(
          flex: 3,
        ),
        Center(
            child: CustomButton(
                onPressed: onPressedLogin,
                text: 'Login',
                colorButton: colorButton,
                colorText: colorText)),
        const Spacer(),
        Center(
          child: CustomTextButton(
            onTap: () {},
            text: 'Login with Google',
            colorButton: kThirdColor,
            colorText: Colors.black,
          ),
        ),
        const Spacer(
          flex: 2,
        ),
      ],
    );
  }
}
