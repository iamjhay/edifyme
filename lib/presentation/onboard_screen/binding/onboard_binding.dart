import '../controller/onboard_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OnboardScreen.
///
/// This class ensures that the OnboardController is created when the
/// OnboardScreen is first loaded.
class OnboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardController());
  }
}
