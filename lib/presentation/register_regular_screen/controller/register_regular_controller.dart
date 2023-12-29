import 'package:edifyme/core/app_export.dart';
import 'package:edifyme/presentation/register_regular_screen/models/register_regular_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the RegisterRegularScreen.
///
/// This class manages the state of the RegisterRegularScreen, including the
/// current registerRegularModelObj
class RegisterRegularController extends GetxController {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<RegisterRegularModel> registerRegularModelObj = RegisterRegularModel().obs;

  @override
  void onClose() {
    super.onClose();
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
