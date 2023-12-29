import 'package:edifyme/core/app_export.dart';
import 'package:edifyme/presentation/onboard_screen/models/onboard_model.dart';

/// A controller class for the OnboardScreen.
///
/// This class manages the state of the OnboardScreen, including the
/// current onboardModelObj
class OnboardController extends GetxController {
  Rx<OnboardModel> onboardModelObj = OnboardModel().obs;
}
