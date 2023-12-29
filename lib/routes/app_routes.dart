import 'package:edifyme/presentation/start_screen/start_screen.dart';
import 'package:edifyme/presentation/start_screen/binding/start_binding.dart';
import 'package:edifyme/presentation/onboard_screen/onboard_screen.dart';
import 'package:edifyme/presentation/onboard_screen/binding/onboard_binding.dart';
import 'package:edifyme/presentation/welcome_screen/welcome_screen.dart';
import 'package:edifyme/presentation/welcome_screen/binding/welcome_binding.dart';
import 'package:edifyme/presentation/register_regular_screen/register_regular_screen.dart';
import 'package:edifyme/presentation/register_regular_screen/binding/register_regular_binding.dart';
import 'package:edifyme/presentation/login_screen/login_screen.dart';
import 'package:edifyme/presentation/login_screen/binding/login_binding.dart';
import 'package:edifyme/presentation/forget_password_screen/forget_password_screen.dart';
import 'package:edifyme/presentation/forget_password_screen/binding/forget_password_binding.dart';
import 'package:edifyme/presentation/verify_email_screen/verify_email_screen.dart';
import 'package:edifyme/presentation/verify_email_screen/binding/verify_email_binding.dart';
import 'package:edifyme/presentation/choose_interest_screen/choose_interest_screen.dart';
import 'package:edifyme/presentation/choose_interest_screen/binding/choose_interest_binding.dart';
import 'package:edifyme/presentation/home_tab_container_screen/home_tab_container_screen.dart';
import 'package:edifyme/presentation/home_tab_container_screen/binding/home_tab_container_binding.dart';
import 'package:edifyme/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:edifyme/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String startScreen = '/start_screen';

  static const String onboardScreen = '/onboard_screen';

  static const String welcomeScreen = '/welcome_screen';

  static const String registerRegularScreen = '/register_regular_screen';

  static const String loginScreen = '/login_screen';

  static const String forgetPasswordScreen = '/forget_password_screen';

  static const String verifyEmailScreen = '/verify_email_screen';

  static const String chooseInterestScreen = '/choose_interest_screen';

  static const String homePage = '/home_page';

  static const String homeTabContainerScreen = '/home_tab_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: startScreen,
      page: () => StartScreen(),
      bindings: [
        StartBinding(),
      ],
    ),
    GetPage(
      name: onboardScreen,
      page: () => OnboardScreen(),
      bindings: [
        OnboardBinding(),
      ],
    ),
    GetPage(
      name: welcomeScreen,
      page: () => WelcomeScreen(),
      bindings: [
        WelcomeBinding(),
      ],
    ),
    GetPage(
      name: registerRegularScreen,
      page: () => RegisterRegularScreen(),
      bindings: [
        RegisterRegularBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: forgetPasswordScreen,
      page: () => ForgetPasswordScreen(),
      bindings: [
        ForgetPasswordBinding(),
      ],
    ),
    GetPage(
      name: verifyEmailScreen,
      page: () => VerifyEmailScreen(),
      bindings: [
        VerifyEmailBinding(),
      ],
    ),
    GetPage(
      name: chooseInterestScreen,
      page: () => ChooseInterestScreen(),
      bindings: [
        ChooseInterestBinding(),
      ],
    ),
    GetPage(
      name: homeTabContainerScreen,
      page: () => HomeTabContainerScreen(),
      bindings: [
        HomeTabContainerBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => StartScreen(),
      bindings: [
        StartBinding(),
      ],
    )
  ];
}
