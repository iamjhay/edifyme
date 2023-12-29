import '../controller/register_regular_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RegisterRegularScreen.
///
/// This class ensures that the RegisterRegularController is created when the
/// RegisterRegularScreen is first loaded.
class RegisterRegularBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterRegularController());
  }
}
