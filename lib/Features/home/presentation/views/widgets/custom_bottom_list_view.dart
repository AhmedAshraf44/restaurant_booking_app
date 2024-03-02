import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_booking_app/core/utils/app_router.dart';
import '../../../../../core/utils/widgets/custom_card.dart';

class CustomBottomListView extends StatelessWidget {
  const CustomBottomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) {
      return  Padding(
        padding: const EdgeInsets.only(
          bottom: 6,
        ),
        child: CustomCard(elevation: 0,textButton:'Book',onPressed: () => GoRouter.of(context).push(AppRouter.kDetailsRestaurantView),),
      );
    },);
  }
}

