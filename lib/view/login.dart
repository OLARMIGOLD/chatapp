import 'package:chatapp/core/constants/images_const.dart';
import 'package:chatapp/core/theme/custom_colors.dart';
import 'package:chatapp/core/theme/custom_textstyle.dart';
import 'package:chatapp/view/widget/dividerOr.dart';
import 'package:chatapp/view/widget/social_button.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
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
                    text: "Log In",
                    style: CustomTextstyle.title.copyWith(
                        decoration: TextDecoration.underline,
                        decorationThickness: 5,
                        decorationColor: CustomColors.primaryColor,
                        color: CustomColors.black),
                    children: [
                  TextSpan(
                    text: " to Chatbox",
                    style: CustomTextstyle.title.copyWith(
                        decoration: TextDecoration.none,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 20,
              children: [
                SocialButton(
                  imagepath: ImagesConst.facebook,
                  borderColor: CustomColors.black,
                ),
                SocialButton(
                  imagepath: ImagesConst.google,
                  borderColor: CustomColors.black,
                ),
                SocialButton(
                  imagepath: ImagesConst.apple,
                  borderColor: CustomColors.black,
                  imageColor: Colors.black,
                ),
              ],
            ),
            DividerOr(
              textColor: Colors.black,
            ),
            Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email"),
                    TextFormField(
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
                child: Text("Log In",
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
