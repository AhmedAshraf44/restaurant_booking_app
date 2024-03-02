import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_booking_app/Features/auth/presentation/views/widgets/create_acount_tab.dart';
import 'package:restaurant_booking_app/Features/auth/presentation/views/widgets/login_tab.dart';
import 'package:restaurant_booking_app/constants.dart';
import 'package:restaurant_booking_app/core/utils/app_router.dart';
import 'package:restaurant_booking_app/core/utils/styles.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({super.key, required this.index});
  final int index;

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  int? currentInde;
  bool validate = false;
  bool obscureText = true;
  IconData suffixIcon = Icons.visibility;

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
      child: Form(
        autovalidateMode: autovalidateMode,
        key: formKey,
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
                        color:
                            currentInde == 0 ? kPrimaryColor : kSecondaryColor,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Login',
                      style: Styles.textStyle16Regular.copyWith(
                        color:
                            currentInde == 1 ? kPrimaryColor : kSecondaryColor,
                      ),
                    ),
                  ),
                ]),
            Expanded(
              child:
                  TabBarView(physics: const BouncingScrollPhysics(), children: [
                CreateAcountTab(
                  prefixIconColor: validate ? kSecondaryColor : Colors.black,
                  obscureText: obscureText,
                  suffixIcon: suffixIcon,
                  suffixIconColor: obscureText ? kSecondaryColor : Colors.black,
                  onPressed: () {
                    setState(() {
                      obscureText = !obscureText;
                      suffixIcon =
                          obscureText ? Icons.visibility : Icons.visibility_off;
                    });
                  },
                  colorButton: validate ? kPrimaryColor : kThirdColor,
                  colorText: validate ? Colors.white : kSecondaryColor,
                  colorTopTextFeild:
                      validate ? kInputTextFeildColor : Colors.black,
                  onChanged: (value) {
                    setState(() {
                      validate = formKey.currentState!.validate();
                    });
                  },
                  onPressedRegistration: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      GoRouter.of(context).push(AppRouter.kHomeView);
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //     const SnackBar(content: Text('Processing Data')));
                    } else {
                      setState(() {
                        autovalidateMode = AutovalidateMode.always;
                        validate = false;
                      });
                    }
                  },
                ),
                LoginTab(
                  prefixIconColor: validate ? kSecondaryColor : Colors.black,
                  obscureText: obscureText,
                  suffixIcon: suffixIcon,
                  suffixIconColor: obscureText ? kSecondaryColor : Colors.black,
                  onPressed: () {
                    setState(() {
                      obscureText = !obscureText;
                      suffixIcon =
                          obscureText ? Icons.visibility : Icons.visibility_off;
                    });
                  },
                  colorButton: validate ? kPrimaryColor : kThirdColor,
                  colorText: validate ? Colors.white : kSecondaryColor,
                  colorTopTextFeild:
                      validate ? kInputTextFeildColor : Colors.black,
                  onChanged: (value) {
                    setState(() {
                      validate = formKey.currentState!.validate();
                    });
                  },
                  onPressedLogin: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      GoRouter.of(context).push(AppRouter.kHomeView);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      validate = false;
                      setState(() {});
                    }
                  },
                ),
              ]),
            )
          ]),
        ),
      ),
    );
  }
}
