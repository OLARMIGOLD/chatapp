import 'package:chatapp/core/constants/images_const.dart';
import 'package:chatapp/core/theme/theme.dart';
import 'package:chatapp/provider/splashprovider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<Splashprovider>().nextPage(context);
    return Scaffold(
      body: Container(
        color: context.isDark ? CustomColors.primaryColor : CustomColors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                ImagesConst.logo,
                width: 50,
                color: context.isDark
                    ? CustomColors.white
                    : CustomColors.primaryColor,
              ),
              Text(
                "Chatbox",
                style: CustomTextstyle.caption.copyWith(fontSize: 35),
              )
            ],
          ),
        ),
      ),
    );
  }
}
