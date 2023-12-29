import 'controller/register_regular_controller.dart';
import 'package:edifyme/core/app_export.dart';
import 'package:edifyme/core/utils/validation_functions.dart';
import 'package:edifyme/widgets/custom_elevated_button.dart';
import 'package:edifyme/widgets/custom_icon_button.dart';
import 'package:edifyme/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RegisterRegularScreen extends GetWidget<RegisterRegularController> {
  RegisterRegularScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
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
                  margin: EdgeInsets.only(left: 2.h),
                ),
                SizedBox(height: 56.v),
                CustomImageView(
                  imagePath: ImageConstant.imgLogowhite1,
                  height: 72.v,
                  width: 66.h,
                ),
                SizedBox(height: 68.v),
                Text(
                  "lbl_register2".tr,
                  style: theme.textTheme.displaySmall,
                ),
                SizedBox(height: 21.v),
                _buildFirstName(),
                SizedBox(height: 10.v),
                _buildLastName(),
                SizedBox(height: 10.v),
                _buildEmail(),
                SizedBox(height: 10.v),
                _buildPassword(),
                SizedBox(height: 20.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_by_registering2".tr,
                        style: CustomTextStyles.titleSmallMedium,
                      ),
                      TextSpan(
                        text: "msg_terms_conditions".tr,
                        style: CustomTextStyles.titleSmallGreenA200.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 16.v),
                _buildRegisterButton(),
                SizedBox(height: 20.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 23.h,
                    right: 15.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 8.v,
                          bottom: 6.v,
                        ),
                        child: SizedBox(
                          width: 97.h,
                          child: Divider(),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          "msg_or_continue_with".tr,
                          style: CustomTextStyles.bodyMediumWhiteA700,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 8.v,
                          bottom: 6.v,
                        ),
                        child: SizedBox(
                          width: 103.h,
                          child: Divider(
                            indent: 6.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 22.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIconButton(
                      height: 44.adaptSize,
                      width: 44.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGoogle,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 17.h),
                      child: CustomIconButton(
                        height: 44.adaptSize,
                        width: 44.adaptSize,
                        padding: EdgeInsets.all(9.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgUser,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 34.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "msg_already_have_an".tr,
                      style: CustomTextStyles.bodyMediumWhiteA700,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_log_in2".tr,
                        style: CustomTextStyles.titleSmallGreenA200_1,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFirstName() {
    return CustomTextFormField(
      controller: controller.firstNameController,
      hintText: "msg_enter_your_first".tr,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(14.h, 15.v, 12.h, 15.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgLock,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 54.v,
      ),
      validator: (value) {
        if (!isText(value)) {
          return "err_msg_please_enter_valid_text".tr;
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildLastName() {
    return CustomTextFormField(
      controller: controller.lastNameController,
      hintText: "msg_enter_your_last".tr,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(14.h, 15.v, 12.h, 15.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgLock,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 54.v,
      ),
      validator: (value) {
        if (!isText(value)) {
          return "err_msg_please_enter_valid_text".tr;
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
      controller: controller.emailController,
      hintText: "msg_enter_your_email".tr,
      textInputType: TextInputType.emailAddress,
      prefix: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 13.h,
          vertical: 15.v,
        ),
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
      prefixConstraints: BoxConstraints(
        maxHeight: 54.v,
      ),
      validator: (value) {
        if (value == null || (!isValidEmail(value, isRequired: true))) {
          return "err_msg_please_enter_valid_email".tr;
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildPassword() {
    return CustomTextFormField(
      controller: controller.passwordController,
      hintText: "msg_enter_a_password".tr,
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(14.h, 15.v, 12.h, 15.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgUserGray100,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 54.v,
      ),
      validator: (value) {
        if (value == null || (!isValidPassword(value, isRequired: true))) {
          return "err_msg_please_enter_valid_password".tr;
        }
        return null;
      },
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildRegisterButton() {
    return CustomElevatedButton(
      text: "lbl_register".tr,
    );
  }
}
