import 'package:flutter/material.dart';
import 'package:restaurant_booking_app/Features/home/presentation/views/widgets/custom_bottom_list_view.dart';

import '../../../../registration/presentation/views/widgets/custom_text_widget.dart';

class CustomBottomSection extends StatelessWidget {
  const CustomBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
             padding:  EdgeInsets.only(right: 17,left: 17,top: 36,bottom: 16),
          child: CustomTextwidget(textTop: 'Booking Restaurant',textBottom:'Check your city Near by Restaurant'),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 17,
          ),
          child: CustomBottomListView(),
        )
      ],
    );
  }
}
