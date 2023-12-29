import 'controller/home_tab_container_controller.dart';
import 'package:edifyme/core/app_export.dart';
import 'package:edifyme/presentation/home_page/home_page.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomeTabContainerScreen extends GetWidget<HomeTabContainerController> {
  const HomeTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 58.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildHomeRow(),
                      SizedBox(height: 21.v),
                      _buildTabview(),
                      SizedBox(
                        height: 793.v,
                        child: TabBarView(
                          controller: controller.tabviewController,
                          children: [
                            HomePage(),
                            HomePage(),
                            HomePage(),
                            HomePage(),
                            HomePage(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHomeRow() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_good_morning".tr,
            style: CustomTextStyles.bodyLarge16,
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgSettings,
            height: 18.adaptSize,
            width: 18.adaptSize,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBell,
            height: 20.v,
            width: 18.h,
            margin: EdgeInsets.only(left: 14.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGearshape,
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.only(left: 15.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 34.v,
      width: 412.h,
      child: TabBar(
        controller: controller.tabviewController,
        isScrollable: true,
        tabs: [
          Tab(
            child: Text(
              "lbl_all".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_favourites".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_pray".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_spirit_charge".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_worship".tr,
            ),
          ),
        ],
      ),
    );
  }
}
