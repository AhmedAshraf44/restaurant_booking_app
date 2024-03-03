import 'package:flutter/material.dart';
import 'package:restaurant_booking_app/Features/auth/presentation/views/widgets/create_acount_tab.dart';
import 'package:restaurant_booking_app/Features/auth/presentation/views/widgets/login_tab.dart';
import 'package:restaurant_booking_app/constants.dart';
import 'package:restaurant_booking_app/core/utils/styles.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({super.key, required this.index});
  final int index;

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  int? currentInde;
  @override
  void initState() {
    currentInde = widget.index;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: widget.index,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * kWidthButon,
        child: Column(children: [
          TabBar(
              onTap: (value) {
                setState(() {
                  currentInde = value;
                });
              },
              indicatorColor: kPrimaryColor,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Tab(
                  child: Text(
                    'Create Account',
                    style: Styles.textStyle16Regular.copyWith(
                      color: currentInde == 0 ? kPrimaryColor : kSecondaryColor,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Login',
                    style: Styles.textStyle16Regular.copyWith(
                      color: currentInde == 1 ? kPrimaryColor : kSecondaryColor,
                    ),
                  ),
                ),
              ]),
          const Expanded(
            child: TabBarView(physics: BouncingScrollPhysics(), children: [
              CreateAcountTab(),
              LoginTab(),
            ]),
          )
        ]),
      ),
    );
  }
}
