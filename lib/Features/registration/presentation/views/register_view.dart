import 'package:flutter/material.dart';
import 'package:restaurant_booking_app/Features/registration/presentation/views/widgets/register_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView ({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RegisterBody(),
    );
  }
}