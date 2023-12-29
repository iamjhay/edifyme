import '../home_page/widgets/playlist_item_widget.dart';
import '../home_page/widgets/userprofile_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_model.dart';
import 'models/playlist_item_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:edifyme/core/app_export.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key})
      : super(
          key: key,
        );

  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 21.v),
                Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgMaskGroup,
                      height: 180.v,
                      width: 396.h,
                    ),
                    SizedBox(height: 17.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "lbl_popular".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    ),
                    SizedBox(height: 3.v),
                    _buildPlaylist(),
                    SizedBox(height: 27.v),
                    _buildClientTestimonials(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPlaylist() {
    return SizedBox(
      height: 183.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(left: 16.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 15.h,
            );
          },
          itemCount:
              controller.homeModelObj.value.playlistItemList.value.length,
          itemBuilder: (context, index) {
            PlaylistItemModel model =
                controller.homeModelObj.value.playlistItemList.value[index];
            return PlaylistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildClientTestimonials() {
    return SizedBox(
      height: 461.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 15.h,
                right: 19.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Text(
                      "msg_trending_sermons".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Obx(
                    () => ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (
                        context,
                        index,
                      ) {
                        return SizedBox(
                          height: 20.v,
                        );
                      },
                      itemCount: controller
                          .homeModelObj.value.userprofileItemList.value.length,
                      itemBuilder: (context, index) {
                        UserprofileItemModel model = controller.homeModelObj
                            .value.userprofileItemList.value[index];
                        return UserprofileItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(top: 259.v),
              padding: EdgeInsets.symmetric(vertical: 15.v),
              decoration: AppDecoration.fillOnPrimary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 32.v,
                    width: 30.h,
                    margin: EdgeInsets.only(bottom: 140.v),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgVuesaxLinearHome,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 4.h),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "lbl_home".tr,
                            style: theme.textTheme.labelMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 32.v,
                    width: 35.h,
                    margin: EdgeInsets.only(bottom: 140.v),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgContrast,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 6.h),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "lbl_search".tr,
                            style: theme.textTheme.labelMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 139.v),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgThumbsUp,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                        ),
                        Text(
                          "lbl_library".tr,
                          style: theme.textTheme.labelMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
