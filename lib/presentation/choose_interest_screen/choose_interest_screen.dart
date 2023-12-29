import '../choose_interest_screen/widgets/chooseinterestchipview2_item_widget.dart';
import '../choose_interest_screen/widgets/chooseinterestchipview_item_widget.dart';
import 'controller/choose_interest_controller.dart';
import 'models/chooseinterestchipview2_item_model.dart';
import 'models/chooseinterestchipview_item_model.dart';
import 'package:edifyme/core/app_export.dart';
import 'package:edifyme/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ChooseInterestScreen extends GetWidget<ChooseInterestController> {
  const ChooseInterestScreen({Key? key})
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
            horizontal: 24.h,
            vertical: 45.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 9.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    right: 85.h,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowDown,
                        height: 35.adaptSize,
                        width: 35.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 13.h,
                          top: 2.v,
                        ),
                        child: Text(
                          "msg_choose_your_interest".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 26.v),
              Container(
                width: 344.h,
                margin: EdgeInsets.only(
                  left: 13.h,
                  right: 22.h,
                ),
                child: Text(
                  "msg_choose_your_interest2".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    height: 1.39,
                  ),
                ),
              ),
              SizedBox(height: 34.v),
              _buildChooseInterestChipView(),
              SizedBox(height: 15.v),
              _buildChooseInterestChipView2(),
            ],
          ),
        ),
        bottomNavigationBar: _buildFifteenRow(),
      ),
    );
  }

  /// Section Widget
  Widget _buildChooseInterestChipView() {
    return Obx(
      () => Wrap(
        runSpacing: 13.v,
        spacing: 13.h,
        children: List<Widget>.generate(
          controller.chooseInterestModelObj.value.chooseinterestchipviewItemList
              .value.length,
          (index) {
            ChooseinterestchipviewItemModel model = controller
                .chooseInterestModelObj
                .value
                .chooseinterestchipviewItemList
                .value[index];

            return ChooseinterestchipviewItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildChooseInterestChipView2() {
    return Obx(
      () => Wrap(
        runSpacing: 17.v,
        spacing: 17.h,
        children: List<Widget>.generate(
          controller.chooseInterestModelObj.value
              .chooseinterestchipview2ItemList.value.length,
          (index) {
            Chooseinterestchipview2ItemModel model = controller
                .chooseInterestModelObj
                .value
                .chooseinterestchipview2ItemList
                .value[index];

            return Chooseinterestchipview2ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFifteenRow() {
    return Padding(
      padding: EdgeInsets.only(
        left: 27.h,
        right: 27.h,
        bottom: 30.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomElevatedButton(
            width: 178.h,
            text: "lbl_skip".tr,
          ),
          CustomElevatedButton(
            width: 161.h,
            text: "lbl_continue".tr,
            buttonStyle: CustomButtonStyles.fillWhiteA,
            buttonTextStyle: CustomTextStyles.titleSmallGray900,
          ),
        ],
      ),
    );
  }
}
