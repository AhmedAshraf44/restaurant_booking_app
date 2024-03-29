import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_booking_app/Features/auth/presentation/views/widgets/custom_text_button.dart';
import 'package:restaurant_booking_app/core/utils/widgets/custom_button.dart';
import 'package:restaurant_booking_app/constants.dart';

import '../../../../../core/functions/show_snack_bar.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/widgets/custom_all_content_text_form_field.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CreateAcountTab extends StatefulWidget {
  const CreateAcountTab({
    super.key,
  });

  @override
  State<CreateAcountTab> createState() => _CreateAcountTabState();
}

class _CreateAcountTabState extends State<CreateAcountTab> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  bool validate = false;
  bool obscureText = true;
  IconData suffixIcon = Icons.visibility;
  String? password;
  String? email;
  String? name;

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
            flex: 2,
          ),
          CustomAllContentTextFormField(
            textFormField: 'Enter your full name ',
            topTextFeild: 'Full Name',
            colorTopTextFeild: validate ? kInputTextFeildColor : Colors.black,
            onChanged: (data) {
              validate = formKey.currentState!.validate();
              name = data;
            },
            prefixIcon: Icons.person_2_rounded,
            prefixIconColor: validate ? kSecondaryColor : Colors.black,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomAllContentTextFormField(
            textFormField: 'Eg namaemail@emailkamu.com ',
            topTextFeild: 'Email address',
            colorTopTextFeild: validate ? kInputTextFeildColor : Colors.black,
            onChanged: (data) {
              setState(() {
                validate = formKey.currentState!.validate();
              });
              email = data;
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
            colorTopTextFeild: validate ? kInputTextFeildColor : Colors.black,
            onChanged: (data) {
              setState(() {
                validate = formKey.currentState!.validate();
              });
              password = data;
            },
            prefixIcon: Icons.password,
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
          ),
          const Spacer(
            flex: 3,
          ),
          Center(
            child: CustomButton(
              onPressed: () async {
                if (formKey.currentState!.validate()) {
                                      //   formKey.currentState!.save();
                  try {
                    await registerUser();
                    showSnackBar(context,'suceess');
                    GoRouter.of(context).push(AppRouter.kHomeView);
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'weak-password') {
                      showSnackBar(context,'The password provided is too weak.');
                    } else if (e.code == 'email-already-in-use') {
                      showSnackBar(context,'The account already exists for that email.');
                    }
                  } catch (e) {
                    print(e);
                  }
                } else {
                  setState(() {
                    autovalidateMode = AutovalidateMode.always;
                    validate = false;
                  });
                }
              },
              text: 'Registration',
              colorButton: validate ? kPrimaryColor : kThirdColor,
              colorText: validate ? Colors.white : kSecondaryColor,
            ),
          ),
          const Spacer(),
          Center(
            child: CustomTextButton(
              onTap: () {},
              text: 'Sign up with Google',
              colorText: Colors.black,
              colorButton: kThirdColor,
            ),
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }



  Future<UserCredential> registerUser() async {
    UserCredential user =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email!,
      password: password!,
    );
    return user;
  }
}
