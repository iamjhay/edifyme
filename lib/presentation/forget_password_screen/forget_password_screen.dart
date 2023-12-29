import 'controller/forget_password_controller.dart';
import 'package:edifyme/core/app_export.dart';
import 'package:edifyme/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ForgetPasswordScreen extends GetWidget<ForgetPasswordController> {
  const ForgetPasswordScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 36.h,
            vertical: 50.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgArrowDown,
                height: 35.adaptSize,
                width: 35.adaptSize,
                alignment: Alignment.centerLeft,
              ),
              SizedBox(height: 55.v),
              CustomImageView(
                imagePath: ImageConstant.imgLogowhite1,
                height: 72.v,
                width: 66.h,
              ),
              SizedBox(height: 76.v),
              Text(
                "lbl_forget_password".tr,
                style: theme.textTheme.displaySmall,
              ),
              SizedBox(height: 12.v),
              Container(
                width: 259.h,
                margin: EdgeInsets.only(
                  left: 48.h,
                  right: 47.h,
                ),
                child: Text(
                  "msg_enter_the_email".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLargeNunitoSans16,
                ),
              ),
              SizedBox(height: 39.v),
              CustomElevatedButton(
                text: "msg_enter_a_valid_email".tr,
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 13.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      12.h,
                    ),
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgCheckmark,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
                buttonStyle: CustomButtonStyles.fillGray,
                buttonTextStyle: theme.textTheme.bodyMedium!,
              ),
              SizedBox(height: 20.v),
              CustomElevatedButton(
                text: "msg_send_instructions".tr,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
