import 'package:flutter/material.dart';
import 'package:restaurant_booking_app/Features/onboarding/presentation/views/widgets/onboarding_pages.dart';
import 'package:restaurant_booking_app/Features/onboarding/presentation/views/widgets/arrow_icon.dart';
import 'package:restaurant_booking_app/core/utils/styles.dart';
import 'package:go_router/go_router.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:restaurant_booking_app/constants.dart';
import 'package:restaurant_booking_app/core/utils/app_router.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key,});
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
        globalBackgroundColor: Colors.white,
        scrollPhysics: const BouncingScrollPhysics(),
        
        pages: OnboardingPages.pages
        ,
        showSkipButton: true,
        skip: const Text('Skip', style: Styles.textStyle16Regular,),
        done: const ArrowIcon(),
        next:const ArrowIcon(),
        onSkip: () 
        {
        GoRouter.of(context).push(AppRouter.kRegisterView);
        },
        onDone: () {
        GoRouter.of(context).push(AppRouter.kRegisterView);
        },
        dotsDecorator: DotsDecorator(
          spacing:const EdgeInsets.all(4),
          size: const Size.square(10.0),
          color:const Color(0xffE6E6E6) ,
          activeSize: const Size(10.0, 10.0),
          activeColor: kPrimaryColor,
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        ),
      );
    }
}
