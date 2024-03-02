import 'package:flutter/material.dart';

RoundedRectangleBorder buildRoundedRectangleBorder() {
  return const RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25), topRight: Radius.circular(25)),
  );
}
