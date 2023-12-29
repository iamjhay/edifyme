import 'package:edifyme/core/app_export.dart';
import 'package:edifyme/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

import 'controller/onboard_controller.dart';

// ignore_for_file: must_be_immutable
class OnboardScreen extends GetWidget<OnboardController> {
  const OnboardScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: false,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.gray900,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup47,
              ),
              alignment: Alignment.center,
              fit: BoxFit.cover,
            ),
          ),
          child: OverflowBox(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.green.withOpacity(0.9),
                    Colors.green.withOpacity(0.9),
                    Colors.green.withOpacity(0.7),
                    Colors.green.withOpacity(0.7),
                    Colors.green.withOpacity(0.5),
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.8),
                  ],
                ),
              ),
              child: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 36.h,
                      vertical: 81.v,
                    ),
                    decoration: AppDecoration.fillGray900,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 458.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgLogoname2,
                          height: 30.v,
                          width: 110.h,
                          margin: EdgeInsets.only(left: 4.h),
                        ),
                        SizedBox(height: 14.v),
                        Container(
                          width: 248.h,
                          margin: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "msg_welcome_to_edifyme".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.displaySmallInter,
                          ),
                        ),
                        SizedBox(height: 5.v),
                        Container(
                          width: 289.h,
                          margin: EdgeInsets.only(
                            left: 4.h,
                            right: 62.h,
                          ),
                          child: Text(
                            "msg_connecting_faith".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style:
                                CustomTextStyles.bodyLargeNunitoSans.copyWith(
                              height: 1.38,
                            ),
                          ),
                        ),
                        SizedBox(height: 67.v),
                        CustomElevatedButton(
                          height: 52.v,
                          text: "lbl_get_started".tr,
                          margin: EdgeInsets.only(left: 2.h),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
