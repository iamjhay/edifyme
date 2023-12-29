import '../controller/home_controller.dart';
import '../models/playlist_item_model.dart';
import 'package:edifyme/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PlaylistItemWidget extends StatelessWidget {
  PlaylistItemWidget(
    this.playlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PlaylistItemModel playlistItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: playlistItemModelObj.image!.value,
              height: 150.adaptSize,
              width: 150.adaptSize,
              radius: BorderRadius.circular(
                10.h,
              ),
            ),
          ),
          SizedBox(height: 2.v),
          SizedBox(
            width: 94.h,
            child: Obx(
              () => Text(
                playlistItemModelObj.mathematicsofmathematics!.value,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.labelLargeInter,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
