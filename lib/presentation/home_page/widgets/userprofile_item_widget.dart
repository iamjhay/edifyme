import '../controller/home_controller.dart';
import '../models/userprofile_item_model.dart';
import 'package:edifyme/core/app_export.dart';
import 'package:edifyme/widgets/custom_elevated_button.dart';
import 'package:edifyme/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: userprofileItemModelObj.userImage!.value,
            height: 100.adaptSize,
            width: 100.adaptSize,
            radius: BorderRadius.circular(
              10.h,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 10.h,
            top: 5.v,
            bottom: 4.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  userprofileItemModelObj.title!.value,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 8.v),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Obx(
                      () => Text(
                        userprofileItemModelObj.author!.value,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 1.v,
                      bottom: 3.v,
                    ),
                    child: SizedBox(
                      child: Divider(
                        color: theme.colorScheme.onPrimaryContainer,
                        indent: 12.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 9.h),
                    child: Obx(
                      () => Text(
                        userprofileItemModelObj.duration!.value,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.v),
              SizedBox(
                width: 283.h,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomElevatedButton(
                      height: 30.v,
                      width: 82.h,
                      text: "lbl_play".tr,
                      leftIcon: Container(
                        margin: EdgeInsets.only(right: 6.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgUserWhiteA700,
                          height: 10.adaptSize,
                          width: 10.adaptSize,
                        ),
                      ),
                      buttonStyle: CustomButtonStyles.fillPrimaryTL15,
                      buttonTextStyle: theme.textTheme.bodySmall!,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgPlaylistAddSvgrepoCom,
                      height: 27.adaptSize,
                      width: 27.adaptSize,
                      margin: EdgeInsets.only(left: 25.h),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 24.h,
                        bottom: 7.v,
                      ),
                      child: CustomIconButton(
                        height: 21.adaptSize,
                        width: 21.adaptSize,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgDownloadSquareSvgrepoCom,
                        ),
                      ),
                    ),
                    Spacer(),
                    CustomImageView(
                      imagePath: ImageConstant.imgNotification,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(bottom: 5.v),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
