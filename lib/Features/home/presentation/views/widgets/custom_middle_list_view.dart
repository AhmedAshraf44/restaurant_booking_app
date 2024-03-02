import 'package:flutter/material.dart';
import 'package:restaurant_booking_app/Features/home/presentation/views/widgets/custom_middle_list_view_item.dart';

class CustomMiddleListView extends StatelessWidget {
  const CustomMiddleListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .23,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return  const Padding(
            padding:  EdgeInsets.only(left: 18),
            child:  CustomMiddleListViewItem(),
          );
        },
      ),
    );
  }
}