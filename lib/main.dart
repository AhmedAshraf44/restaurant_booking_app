import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_booking_app/core/utils/app_router.dart';

void main() {
  runApp(const RestaurantBookingApp());
}
 

class RestaurantBookingApp extends StatelessWidget {
  const RestaurantBookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: ThemeData(textTheme:GoogleFonts.interTextTheme())
    );
  }
}