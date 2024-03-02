import 'package:flutter/material.dart';
import 'package:restaurant_booking_app/Features/registration/presentation/views/widgets/register_form.dart';

class RegisterBottomSheet extends StatelessWidget {
  const RegisterBottomSheet({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 64,
         right: 16,
         left: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: RegisterForm(index: index),
    );
  }
}