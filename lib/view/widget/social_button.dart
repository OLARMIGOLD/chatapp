import 'package:chatapp/core/constants/images_const.dart';
import 'package:chatapp/core/theme/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialButton extends StatelessWidget {
  final String imagepath;
  final Color borderColor;
  final Color imageColor;

  const SocialButton(
      {super.key,
      required this.imagepath,
      this.imageColor = CustomColors.white,
      this.borderColor = CustomColors.white});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: imagepath.endsWith('svg')
              ? EdgeInsets.all(15)
              : EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: borderColor),
          ),
          child: imagepath.endsWith("svg")
              ? SvgPicture.asset(
                  imagepath,
                  color: imageColor,
                  height: 30,
                )
              : Image(
                  image: AssetImage(
                  imagepath,
                )),
        )
      ],
    );
  }
}
