import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:restaurant_booking_app/core/utils/styles.dart';

class OnboardingPages {
 static final List<PageViewModel> pages = [
          PageViewModel(
            decoration:const PageDecoration(
               imageFlex:2,
            ),
            body:
                'You don\'t have to go far to find a good restaurant,we have provided all the restaurants that is near you',
            titleWidget:const  Text(
               'Nearby restaurants',
              style: Styles.textStyle24,
            ),
            image: Image.asset(
              'assets/images/onboarding/Tracking & Maps.png',
            ),
          ),

          PageViewModel(
            decoration:const PageDecoration(
              imageFlex:2,
             ),
            body:
                'Now eat well, don\'t leave the house,You can choose your favorite food only with one click',
            titleWidget: const Text(
              'Select the Favorites Menu',
              style: Styles.textStyle24,
            ),
            image: Image.asset(
                'assets/images/onboarding/Order illustration.png',),
          ),
          PageViewModel(
            decoration:const PageDecoration(
               imageFlex:2,
            ),
            body: 'You can eat at expensive restaurants with affordable price',
            titleWidget: const Text(
              'Good food at a cheap price',
              style: Styles.textStyle24,
            ),
            image: Image.asset('assets/images/onboarding/Safe Food.png',),
          )
        ];
}
