import 'package:flutter/material.dart';
import 'package:restaurant_booking_app/Features/home/presentation/views/widgets/custom_middle_list_view.dart';
import '../../../../registration/presentation/views/widgets/custom_text_widget.dart';

class CustomMiddleSection extends StatelessWidget {
  const CustomMiddleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
             padding:  EdgeInsets.only(right: 17,left: 17,top: 36,bottom: 16),
          child: CustomTextwidget(textTop: 'Today New Arivable',textBottom:'Best of the today  food list update'),
        ),
        CustomMiddleListView(),
      ],
    );
  }
}