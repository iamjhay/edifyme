import 'controller/welcome_controller.dart';
import 'package:edifyme/core/app_export.dart';
import 'package:edifyme/widgets/custom_elevated_button.dart';
import 'package:edifyme/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:edifyme/domain/googleauth/google_auth_helper.dart';

class WelcomeScreen extends GetWidget<WelcomeController> {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 36.h, vertical: 50.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowDown,
                      height: 35.adaptSize,
                      width: 35.adaptSize,
                      alignment: Alignment.centerLeft),
                  SizedBox(height: 68.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgLogowhite1,
                      height: 72.v,
                      width: 66.h),
                  Spacer(),
                  SizedBox(
                      width: 351.h,
                      child: Text("msg_explore_an_extensive".tr,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.displaySmallInter34)),
                  SizedBox(height: 48.v),
                  CustomElevatedButton(text: "lbl_register".tr),
                  SizedBox(height: 11.v),
                  _buildButtonPrimaryBigDefault(),
                  SizedBox(height: 12.v),
                  CustomOutlinedButton(
                      text: "msg_continue_with_google".tr,
                      leftIcon: Container(
                          margin: EdgeInsets.only(right: 30.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgGoogle,
                              height: 23.v,
                              width: 22.h)),
                      onPressed: () {
                        onTapCONTINUEWITHGOOGLE();
                      }),
                  SizedBox(height: 12.v),
                  CustomOutlinedButton(
                      text: "msg_continue_with_apple".tr,
                      leftIcon: Container(
                          margin: EdgeInsets.only(right: 30.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgUser,
                              height: 28.v,
                              width: 23.h))),
                  SizedBox(height: 16.v),
                  Text("lbl_log_in".tr, style: CustomTextStyles.titleMediumBold)
                ]))));
  }

  /// Section Widget
  Widget _buildButtonPrimaryBigDefault() {
    return Container(
        height: 53.v,
        width: 353.h,
        decoration: AppDecoration.outlineErrorContainer1,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 39.h, vertical: 16.v),
                  decoration: AppDecoration.outlineGray
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder26),
                  child: Text("msg_continue_with_phone".tr,
                      style: CustomTextStyles.titleSmallGray100))),
          CustomImageView(
              imagePath: ImageConstant.imgPhone,
              height: 45.v,
              width: 36.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 8.h))
        ]));
  }

  onTapCONTINUEWITHGOOGLE() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}
