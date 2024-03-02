import 'package:flutter/material.dart';
import 'package:restaurant_booking_app/Features/auth/presentation/views/widgets/auth_body.dart';

class AuthView extends StatelessWidget {
  const AuthView ({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AuthBody(),
    );
  }
}