import 'controller/verify_email_controller.dart';
import 'package:edifyme/core/app_export.dart';
import 'package:edifyme/widgets/custom_elevated_button.dart';
import 'package:edifyme/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class VerifyEmailScreen extends GetWidget<VerifyEmailController> {
  const VerifyEmailScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 35.h,
            vertical: 50.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgArrowDown,
                height: 35.adaptSize,
                width: 35.adaptSize,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 1.h),
              ),
              SizedBox(height: 55.v),
              CustomImageView(
                imagePath: ImageConstant.imgLogowhite1,
                height: 72.v,
                width: 66.h,
              ),
              Spacer(
                flex: 31,
              ),
              Text(
                "lbl_verify_email".tr,
                style: theme.textTheme.displaySmall,
              ),
              SizedBox(height: 7.v),
              Container(
                width: 283.h,
                margin: EdgeInsets.only(
                  left: 38.h,
                  right: 37.h,
                ),
                child: Text(
                  "msg_enter_the_code_we".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLargeNunitoSans16,
                ),
              ),
              SizedBox(height: 42.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.h),
                child: Obx(
                  () => CustomPinCodeTextField(
                    context: Get.context!,
                    controller: controller.otpController.value,
                    onChanged: (value) {},
                  ),
                ),
              ),
              SizedBox(height: 20.v),
              CustomElevatedButton(
                text: "lbl_continue".tr,
              ),
              SizedBox(height: 21.v),
              Text(
                "lbl_resend_code".tr,
                style: CustomTextStyles.titleSmallGreenA200Medium.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
              Spacer(
                flex: 68,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
