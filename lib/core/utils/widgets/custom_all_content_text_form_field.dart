import 'package:flutter/material.dart';

import 'custom_featured_text.dart';
import '../../../Features/auth/presentation/views/widgets/custom_text_form_field.dart';

class CustomAllContentTextFormField extends StatelessWidget {
  const CustomAllContentTextFormField(
      {super.key,
      this.onChanged,
      this.colorTopTextFeild,
      required this.textFormField,
      required this.topTextFeild,
      required this.prefixIcon,
      required this.prefixIconColor,
      this.suffixIcon,
      this.suffixIconColor= Colors.black,
       this.obscureText= false,
      this.onPressed});
  final void Function(String)? onChanged;
  final Color? colorTopTextFeild;
  final String textFormField;
  final String topTextFeild;
  final IconData prefixIcon;
  final Color prefixIconColor;
  final IconData? suffixIcon;
  final Color? suffixIconColor ;
  final bool obscureText;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomFeaturedText(
          text: topTextFeild,
          color: colorTopTextFeild,
        ),
        const SizedBox(
          height: 8,
        ),
        CustomTextFormField(
          text: textFormField,
          onChanged: onChanged,
          prefixIcon: prefixIcon,
          prefixIconColor: prefixIconColor,
          obscureText: obscureText,
          suffixIcon: suffixIcon,
          suffixIconColor: suffixIconColor,
          onPressed: onPressed,
        ),
      ],
    );
  }
}
