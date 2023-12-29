import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.userImage,
    this.title,
    this.author,
    this.duration,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.imgMoyoAkinojo1);
    title = title ?? Rx("The real secret of an excelling life");
    author = author ?? Rx("Apostle Joshua Selman");
    duration = duration ?? Rx("2hr 33min");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? title;

  Rx<String>? author;

  Rx<String>? duration;

  Rx<String>? id;
}
