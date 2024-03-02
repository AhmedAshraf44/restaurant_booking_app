import 'package:flutter/material.dart';
import 'package:restaurant_booking_app/constants.dart';
import 'package:restaurant_booking_app/core/utils/styles.dart';

import '../../../../../core/functions/build_border.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.text,
      this.onChanged,
      required this.prefixIcon,
      required this.prefixIconColor,
      this.suffixIcon = Icons.visibility_off,
      this.suffixIconColor,
      required this.obscureText,
      this.onPressed});
  final String text;
  final void Function(String)? onChanged;
  final IconData prefixIcon;
  final Color prefixIconColor;
  final IconData? suffixIcon;
  final Color? suffixIconColor;
  final bool obscureText;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Feiled is Required';
        } else {
          return null;
        }
      },
      onSaved: (value) {},
      onChanged: onChanged,
      obscureText: obscureText,
      decoration: InputDecoration(
          prefixIcon: Icon(prefixIcon),
          prefixIconColor: prefixIconColor,
          suffixIcon: IconButton(
              onPressed: onPressed,
              icon: Icon(suffixIcon)), //visibility //visibility_off
          suffixIconColor: suffixIconColor,
          hintText: text,
          hintStyle: Styles.textStyle12,
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(color: kPrimaryColor),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: const BorderSide(color: kSecondaryColor))),
    );
  }
}
