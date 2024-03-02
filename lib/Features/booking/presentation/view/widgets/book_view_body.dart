import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_booking_app/core/utils/app_router.dart';
import 'package:restaurant_booking_app/core/utils/widgets/custom_card.dart';

class BookViewBody extends StatelessWidget {
  const BookViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) {
      return  Padding(
        padding:const  EdgeInsets.only(
          bottom: 6,
        ),
        child: Padding(
          padding:const EdgeInsets.only(
        left: 18,
        right: 18,
        ),
          child: CustomCard(textButton: 'Check'
          ,onPressed:()=> GoRouter.of(context).push(AppRouter.kDetailsRestaurantView),),
        ),
      );
    },);
  }
}