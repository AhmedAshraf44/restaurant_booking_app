import 'package:flutter/material.dart';
import 'package:restaurant_booking_app/Features/auth/presentation/views/widgets/auth_form.dart';

class AuthBottomSheet extends StatelessWidget {
  const AuthBottomSheet({super.key, required this.index});
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
      child: AuthForm(index: index),
    );
  }
}