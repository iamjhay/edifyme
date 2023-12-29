import 'package:edifyme/core/app_export.dart';
import 'package:edifyme/presentation/home_tab_container_screen/models/home_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HomeTabContainerScreen.
///
/// This class manages the state of the HomeTabContainerScreen, including the
/// current homeTabContainerModelObj
class HomeTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<HomeTabContainerModel> homeTabContainerModelObj =
      HomeTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 5));
}
