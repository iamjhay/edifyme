import '../../../core/app_export.dart';

/// This class is used in the [playlist_item_widget] screen.
class PlaylistItemModel {
  PlaylistItemModel({
    this.image,
    this.mathematicsofmathematics,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgAdeboyeNewBellanaija);
    mathematicsofmathematics =
        mathematicsofmathematics ?? Rx("Mathematics of mathematics");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? mathematicsofmathematics;

  Rx<String>? id;
}
