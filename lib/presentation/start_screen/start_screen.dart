import 'controller/start_controller.dart';
import 'package:edifyme/core/app_export.dart';
import 'package:flutter/material.dart';

class StartScreen extends GetWidget<StartController> {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 80.v),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(flex: 53),
                      CustomImageView(
                          imagePath: ImageConstant.imgLogo31,
                          height: 76.v,
                          width: 69.h),
                      Spacer(flex: 46),
                      CustomImageView(
                          imagePath: ImageConstant.imgLogotext1,
                          height: 44.v,
                          width: 115.h)
                    ]))));
  }
}
