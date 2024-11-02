import 'package:get/get.dart';
import '../../presentation/forget_password_page/forget_password_page_view.dart';
import '../../presentation/introduction_screen/introduction.screen.dart';
import '../../presentation/screens.dart';
import '../../presentation/splash/splash_view.dart';
import 'bindings/controllers/controllers_bindings.dart';
import 'bindings/controllers/faq_page.controller.binding.dart';
import 'bindings/controllers/help_page.controller.binding.dart';
import 'bindings/controllers/home_page.controller.binding.dart';
import 'bindings/controllers/login_page.controller.binding.dart';
import 'bindings/controllers/new_etablissement_page.controller.binding.dart';
import 'bindings/controllers/profil_page.controller.binding.dart';
import 'bindings/controllers/reset_page.controller.binding.dart';
import 'bindings/controllers/school_details_page.controller.binding.dart';
import 'bindings/controllers/register_in_page.controller.binding.dart';
import 'bindings/forget_password_page_binding.dart';
import 'bindings/splash_binding.dart';
import 'routes.dart';

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.HOME_PAGE,
      page: () => HomePageScreen(),
      binding: HomePageControllerBinding(),
    ),
    GetPage(
      name: Routes.LOGIN_PAGE,
      page: () => LoginPageScreen(),
      binding: LoginPageControllerBinding(),
    ),
    GetPage(
      name: Routes.REGISTER_PAGE,
      page: () =>  RegisterPageScreen(),
      binding: RegisterControllerBinding(),
    ),
    GetPage(
      name: Routes.RESET_PAGE,
      page: () => const ResetPageScreen(),
      binding: ResetPageControllerBinding(),
    ),
    GetPage(
      name: Routes.PROFIL_PAGE,
      page: () => const ProfilPageScreen(),
      binding: ProfilPageControllerBinding(),
    ),
    GetPage(
      name: Routes.NEW_DEALS_PAGE,
      page: () => const NewDealsPageScreen(),
      binding: NewEtatblissementPageControllerBinding(),
    ),
    GetPage(
      name: Routes.FAQ_PAGE,
      page: () => const FaqPageScreen(),
      binding: FaqPageControllerBinding(),
    ),
    GetPage(
      name: Routes.HELP_PAGE,
      page: () => const HelpPageScreen(),
      binding: HelpPageControllerBinding(),
    ),
    GetPage(
      name: Routes.DEALS_DETAILS_PAGE,
      page: () => const DealsDetailsPageScreen(),
      binding: DealsDetailsPageControllerBinding(),
    ),
    GetPage(
      name: Routes.INTRODUCTION_SCREENS,
      page: () =>   IntroductionScreen(),
      binding: DealsDetailsPageControllerBinding(),
    ),
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.FORGET_PASSWORD_PAGE,
      page: () => const ForgetPasswordPageView(),
      binding: ForgetPasswordPageBinding(),
    ),
  ];
}
