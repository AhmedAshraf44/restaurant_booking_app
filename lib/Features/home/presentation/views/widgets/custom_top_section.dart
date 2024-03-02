
import 'package:flutter/material.dart';
import 'package:restaurant_booking_app/Features/home/presentation/views/widgets/home_body.dart';

class CustomTopSection extends StatelessWidget {
  const CustomTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
            children: [
              CustomTopListView(),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.only(right: 40),
                child: Text('* * *'),
              ),
            ],
          );
  }
}