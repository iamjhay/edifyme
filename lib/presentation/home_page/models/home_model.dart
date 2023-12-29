import '../../../core/app_export.dart';
import 'playlist_item_model.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<PlaylistItemModel>> playlistItemList = Rx([
    PlaylistItemModel(
        image: ImageConstant.imgAdeboyeNewBellanaija.obs,
        mathematicsofmathematics: "Mathematics of mathematics".obs),
    PlaylistItemModel(
        image: ImageConstant.imgDavidOyedepo1.obs,
        mathematicsofmathematics: "The dominion power of faith".obs),
    PlaylistItemModel(
        image: ImageConstant.imgJoshuaSelman1.obs,
        mathematicsofmathematics: "Come up hither".obs)
  ]);

  Rx<List<UserprofileItemModel>> userprofileItemList = Rx([
    UserprofileItemModel(
        userImage: ImageConstant.imgMoyoAkinojo1.obs,
        title: "The real secret of an excelling life".obs,
        author: "Apostle Joshua Selman".obs,
        duration: "2hr 33min".obs),
    UserprofileItemModel(
        userImage: ImageConstant.imgDownload1.obs,
        title: "The real secret of an excelling life".obs,
        author: "Apostle Joshua Selman".obs,
        duration: "2hr 33min".obs),
    UserprofileItemModel(
        title: "The real secret of an excelling life".obs,
        author: "Apostle Joshua Selman".obs,
        duration: "2hr 33min".obs)
  ]);
}
