import 'package:go_router/go_router.dart';
import 'package:restaurant_booking_app/Features/booking/presentation/view/book_view.dart';
import 'package:restaurant_booking_app/Features/forget_password/presentation/views/forget_password_view.dart';
import 'package:restaurant_booking_app/Features/home/presentation/views/home_view.dart';

import '../../Features/booking/presentation/view/details_restaurant_view.dart';
import '../../Features/forget_password/presentation/views/change_new_password_view.dart';
import '../../Features/forget_password/presentation/views/check_email_view.dart';
import '../../Features/forget_password/presentation/views/success_view.dart';
import '../../Features/onboarding/presentation/views/onboarding_view.dart';
import '../../Features/auth/presentation/views/auth_view.dart';

abstract class AppRouter {
  static const kRegisterView = '/RegisterView';
  static const kHomeView = '/HomeView';
  static const kForgetPasswordView = '/ForgetPasswordView';
  static const kCheckEmailView = '/CheckEmailView';
  static const kChangeNewPasswordView = '/ChangeNewPasswordView';
  static const kSuccessView = '/SuccessView';
  static const kBookView = '/BookView';
  static const kDetailsRestaurantView = '/DetailsRestaurantView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: kRegisterView,
        builder: (context, state) => const AuthView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kForgetPasswordView,
        builder: (context, state) => const ForgetPasswordView(),
      ),
      GoRoute(
        path: kCheckEmailView,
        builder: (context, state) => const CheckEmailView(),
      ),
      GoRoute(
        path: kChangeNewPasswordView,
        builder: (context, state) => const ChangeNewPasswordView(),
      ),
      GoRoute(
        path: kSuccessView,
        builder: (context, state) => const SuccessView(),
      ),
      GoRoute(
        path: kBookView,
        builder: (context, state) => const BookView(),
      ),
      GoRoute(
        path: kDetailsRestaurantView,
        builder: (context, state) => const DetailsRestaurantView(),
      ),
    ],
  );
}
