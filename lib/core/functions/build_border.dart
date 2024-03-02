 import 'package:flutter/material.dart';
import 'package:restaurant_booking_app/constants.dart';


OutlineInputBorder  buildBorder({color=kTextRegisterColor, double borderRadius = 18}) {
            return OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
             borderSide: BorderSide(color: color),
    );
}