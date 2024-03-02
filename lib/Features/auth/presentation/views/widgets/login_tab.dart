import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_booking_app/Features/auth/presentation/views/widgets/custom_text_button.dart';
import 'package:restaurant_booking_app/core/utils/widgets/custom_button.dart';
import 'package:restaurant_booking_app/core/utils/widgets/custom_featured_text.dart';
import 'package:restaurant_booking_app/constants.dart';
import 'package:restaurant_booking_app/core/utils/app_router.dart';

import '../../../../../core/utils/widgets/custom_all_content_text_form_field.dart';

class LoginTab extends StatefulWidget {
  const LoginTab(
      {super.key,});


  @override
  State<LoginTab> createState() => _LoginTabState();
}

class _LoginTabState extends State<LoginTab> {
   final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  bool validate = false;
  bool obscureText = true;
  IconData suffixIcon = Icons.visibility;
  String? password;
  String? email;


  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(
            flex: 4,
          ),
          CustomAllContentTextFormField(
            textFormField: 'Eg namaemail@emailkamu.com ',
            topTextFeild: 'Email address',
            colorTopTextFeild:  validate ? kInputTextFeildColor : Colors.black,
                  onChanged: (data) {
                    email = data;
                    setState(() {
                      validate = formKey.currentState!.validate();
                    });
                  },
            prefixIcon: Icons.email_outlined,
            prefixIconColor: validate ? kSecondaryColor : Colors.black,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomAllContentTextFormField(
            textFormField: '**** **** **** ',
            topTextFeild: 'Password',
            colorTopTextFeild:  validate ? kInputTextFeildColor : Colors.black,
                   onChanged: (data) {
                     password = data;
                    setState(() {
                      validate = formKey.currentState!.validate();
                    });
                  },
            prefixIcon: Icons.password,
            prefixIconColor: validate ? kSecondaryColor : Colors.black,
            obscureText: obscureText,
            suffixIcon:suffixIcon,
            onPressed:  () {
                    setState(() {
                      obscureText = !obscureText;
                      suffixIcon =
                          obscureText ? Icons.visibility : Icons.visibility_off;
                    });
                  },
            suffixIconColor: obscureText ? kSecondaryColor : Colors.black,
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomFeaturedText(
                text: 'Forget Password?',
                color: kPrimaryColor,
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kForgetPasswordView);
                },
              ),
            ],
          ),
          const Spacer(
            flex: 3,
          ),
          Center(
              child: CustomButton(
                  onPressed:
                  () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      GoRouter.of(context).push(AppRouter.kHomeView);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      validate = false;
                      setState(() {});
                    }
                  },
                  text: 'Login',
                  colorButton:  validate ? kPrimaryColor : kThirdColor,
                  colorText:validate ? Colors.white : kSecondaryColor)),
          const Spacer(),
          Center(
            child: CustomTextButton(
              onTap: () {},
              text: 'Login with Google',
              colorButton: kThirdColor,
              colorText: Colors.black,
            ),
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}


// prefixIconColor: validate ? kSecondaryColor : Colors.black,
//                   obscureText: obscureText,
//                   suffixIcon: suffixIcon,
//                   suffixIconColor: obscureText ? kSecondaryColor : Colors.black,
//                   onPressed: () {
//                     setState(() {
//                       obscureText = !obscureText;
//                       suffixIcon =
//                           obscureText ? Icons.visibility : Icons.visibility_off;
//                     });
//                   },
//                   colorButton: validate ? kPrimaryColor : kThirdColor,
//                   colorText: validate ? Colors.white : kSecondaryColor,
//                   colorTopTextFeild:
//                       validate ? kInputTextFeildColor : Colors.black,
//                   onChanged: (value) {
//                     setState(() {
//                       validate = formKey.currentState!.validate();
//                     });
//                   },
//                   onPressedLogin: () {
//                     if (formKey.currentState!.validate()) {
//                       formKey.currentState!.save();
//                       GoRouter.of(context).push(AppRouter.kHomeView);
//                     } else {
//                       autovalidateMode = AutovalidateMode.always;
//                       validate = false;
//                       setState(() {});
//                     }
//                   },