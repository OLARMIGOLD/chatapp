import 'package:chatapp/core/theme/custom_textstyle.dart';
import 'package:chatapp/view/widget/dividerOr.dart';
import 'package:flutter/material.dart';

import '../core/constants/images_const.dart';
import '../core/theme/theme.dart';
import 'widget/social_button.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final formKey = GlobalKey<FormState>();
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Center(
        child: Column(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
            SizedBox(
              height: 50,
            ),
            RichText(
                text: TextSpan(
                    text: "Sign Up With ",
                    style: CustomTextstyle.title.copyWith(
                        decoration: TextDecoration.none,
                        decorationThickness: 5,
                        decorationColor: CustomColors.primaryColor,
                        color: CustomColors.black),
                    children: [
                  TextSpan(
                    text: "Email",
                    style: CustomTextstyle.title.copyWith(
                        decoration: TextDecoration.underline,
                        decorationThickness: 5,
                        decorationColor: CustomColors.primaryColor,
                        color: CustomColors.black),
                  )
                ])),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Welcome back! Sign in using your social account or email to continue us",
                textAlign: TextAlign.center,
                style: CustomTextstyle.caption.copyWith(
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name"),
                    TextFormField(
                      controller: nameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Name is required";
                        } else if (value.length < 3) {
                          return "Enter a valid Name";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(hintText: "Enter Your Email"),
                    ),
                    Text("Email"),
                    TextFormField(
                      controller: emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Email is required";
                        } else if (!value.contains(".") &&
                            value.contains("@")) {
                          return "Enter a valid Email";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(hintText: "Enter Your Email"),
                    ),
                    Text("Password"),
                    TextFormField(
                      controller: passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password is required";
                        } else if (value.length < 6) {
                          return "Password must be greater than 6";
                        } else {
                          return null;
                        }
                      },
                      decoration:
                          InputDecoration(hintText: "Enter Your Password"),
                    ),
                    Text("Password"),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password is required";
                        } else if (value != passwordController.text) {
                          return "Password must be the";
                        } else {
                          return null;
                        }
                      },
                      decoration:
                          InputDecoration(hintText: "Enter Your Password"),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    print("Validate");
                  }
                },
                child: Text("Create Account",
                    style: CustomTextstyle.body.copyWith(color: Colors.white))),
            SizedBox(
              height: 12,
            ),
            Text(
              "Forget Password?",
              style: CustomTextstyle.body
                  .copyWith(color: CustomColors.primaryColor),
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    ));
  }
}
