import '../controller/choose_interest_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChooseInterestScreen.
///
/// This class ensures that the ChooseInterestController is created when the
/// ChooseInterestScreen is first loaded.
class ChooseInterestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChooseInterestController());
  }
}
