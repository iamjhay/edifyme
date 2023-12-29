import 'chooseinterestchipview_item_model.dart';
import 'chooseinterestchipview2_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [choose_interest_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ChooseInterestModel {
  Rx<List<ChooseinterestchipviewItemModel>> chooseinterestchipviewItemList =
      Rx(List.generate(14, (index) => ChooseinterestchipviewItemModel()));

  Rx<List<Chooseinterestchipview2ItemModel>> chooseinterestchipview2ItemList =
      Rx(List.generate(7, (index) => Chooseinterestchipview2ItemModel()));
}
