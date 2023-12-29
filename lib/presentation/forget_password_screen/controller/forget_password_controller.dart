import 'package:edifyme/core/app_export.dart';
import 'package:edifyme/presentation/forget_password_screen/models/forget_password_model.dart';

/// A controller class for the ForgetPasswordScreen.
///
/// This class manages the state of the ForgetPasswordScreen, including the
/// current forgetPasswordModelObj
class ForgetPasswordController extends GetxController {
  Rx<ForgetPasswordModel> forgetPasswordModelObj = ForgetPasswordModel().obs;
}
