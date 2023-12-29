import 'package:edifyme/core/app_export.dart';
import 'package:edifyme/presentation/choose_interest_screen/models/choose_interest_model.dart';

/// A controller class for the ChooseInterestScreen.
///
/// This class manages the state of the ChooseInterestScreen, including the
/// current chooseInterestModelObj
class ChooseInterestController extends GetxController {
  Rx<ChooseInterestModel> chooseInterestModelObj = ChooseInterestModel().obs;
}
