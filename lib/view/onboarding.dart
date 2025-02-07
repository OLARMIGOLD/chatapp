import 'package:chatapp/core/constants/images_const.dart';
import 'package:chatapp/core/theme/custom_colors.dart';
import 'package:chatapp/core/theme/custom_textstyle.dart';
import 'package:chatapp/view/login.dart';
import 'package:chatapp/view/signup.dart';
import 'package:chatapp/view/widget/social_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.black,
      body: Center(
          child: Container(
        padding: EdgeInsets.all(30),
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(top: 0, child: Image.asset(ImagesConst.onboarding1)),
            Column(
              spacing: 10,
              children: [
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
                  children: [
                    SvgPicture.asset(
                      ImagesConst.logo,
                      width: 20,
                      color: CustomColors.white,
                    ),
                    Text(
                      "Chatbox",
                      style: CustomTextstyle.subtitle
                          .copyWith(color: CustomColors.white),
                    )
                  ],
                ),
                Text(
                  "Connect Friends",
                  style: CustomTextstyle.body
                      .copyWith(color: CustomColors.white, fontSize: 65),
                ),
                Text(
                  "easily & quickly",
                  style: CustomTextstyle.title
                      .copyWith(color: CustomColors.white, fontSize: 65),
                ),
                Text(
                  "Our chat app is the perfect way to stay connected with friends and family.",
                  style: CustomTextstyle.caption
                      .copyWith(fontSize: 18, color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 20,
                  children: [
                    SocialButton(imagepath: ImagesConst.facebook),
                    SocialButton(
                      imagepath: ImagesConst.google,
                    ),
                    SocialButton(
                      imagepath: ImagesConst.apple,
                    ),
                  ],
                ),
                DividerOr(),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupScreen()));
                    },
                    child: Text(
                      "Sign up with Mail",
                      style: CustomTextstyle.subtitle
                          .copyWith(color: Colors.white),
                    )),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Existing Account?",
                      style: CustomTextstyle.subtitle.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text(
                        "Log in",
                        style: CustomTextstyle.subtitle.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}

class DividerOr extends StatelessWidget {
  const DividerOr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider()),
        Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "0r",
              style:
                  CustomTextstyle.subtitle.copyWith(color: CustomColors.white),
            )),
        Expanded(child: Divider()),
      ],
    );
  }
}

class Socialbutton extends StatelessWidget {
  const Socialbutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white),
          ),
          child: Image(image: AssetImage(ImagesConst.facebook)),
        )
      ],
    );
  }
}
