import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:queezy_app/main_screen.dart';
import 'package:queezy_app/res/routes/routes_name.dart';
import 'package:queezy_app/splash_screen/splash_Screen.dart';
import 'package:queezy_app/views/Create_Quiz/choose_category.dart';
import 'package:queezy_app/views/Create_Quiz/create_quiz1.dart';
import 'package:queezy_app/views/Create_Quiz/quiz_screen.dart';
import 'package:queezy_app/views/Discover/discover_view.dart';
import 'package:queezy_app/views/Profile/setting_view.dart';
import 'package:queezy_app/views/Quiz/play_quiz.dart';
import 'package:queezy_app/views/Quiz/qui1a.dart';
import 'package:queezy_app/views/Quiz/quiz1.dart';
import 'package:queezy_app/views/Quiz/quiz2.dart';
import 'package:queezy_app/views/Quiz/quiz3.dart';
import 'package:queezy_app/views/Quiz/quiz4.dart';
import 'package:queezy_app/views/Quiz/quiz5.dart';
import 'package:queezy_app/views/Quiz/quiz5a.dart';
import 'package:queezy_app/views/Quiz/quiz6.dart';
import 'package:queezy_app/views/Quiz/quiz7.dart';
import 'package:queezy_app/views/Quiz/quiz8.dart';
import 'package:queezy_app/views/Quiz/result_view.dart';
import 'package:queezy_app/views/ResetPassword/reset_pass_password_view.dart';
import 'package:queezy_app/views/SignupViews/signup_email.dart';
import 'package:queezy_app/views/SignupViews/signup_pass.dart';
import 'package:queezy_app/views/SignupViews/signup_username.dart';
import 'package:queezy_app/views/SignupViews/signup_view.dart';
import 'package:queezy_app/views/home_screen/home_screen.dart';
import 'package:queezy_app/views/onboardingScreens/main_onboardingscreens.dart';
import 'package:queezy_app/views/userLoginorSignup_Views/login_or_signup_view.dart';
import 'package:queezy_app/views/userLoginorSignup_Views/login_view.dart';
import 'package:queezy_app/views/ResetPassword/reset_pass_email_view.dart';

class AppRoute {
  static appRoutes() => [
    GetPage(
      name: RoutesName.splashScreen,
      page: () => CustomSplashScreen(),
      transitionDuration: Duration(milliseconds: 350),
      transition: Transition.cupertino,
    ),

    GetPage(
      name: RoutesName.homeScreen,
      page: () => HomeScreen(),
      transitionDuration: Duration(milliseconds: 350),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: RoutesName.discoverView,
      page: () => DiscoverView(),
      transitionDuration: Duration(milliseconds: 350),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: RoutesName.loginorsignup,
      page: () => LoginorSignupView(),
      transitionDuration: Duration(milliseconds: 350),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: RoutesName.mainOnboardingScreens,
      page: () => MainOnboardingscreens(),
      transitionDuration: Duration(milliseconds: 350),
      transition: Transition.cupertino,
    ),

    GetPage(
      name: RoutesName.loginView,
      page: () => LoginView(),
      transitionDuration: Duration(milliseconds: 350),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: RoutesName.signUp,
      page: () => SignupView(),
      transitionDuration: Duration(milliseconds: 350),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: RoutesName.signUpEmail,
      page: () => SignupEmail(),
      transitionDuration: Duration(milliseconds: 350),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: RoutesName.signUpPass,
      page: () => SignupPass(),
      transitionDuration: Duration(milliseconds: 350),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: RoutesName.signUpUsername,
      page: () => SignupUsername(),
      transitionDuration: Duration(milliseconds: 350),
      transition: Transition.cupertino,
    ),

    GetPage(
      name: RoutesName.resetPassEmailView,
      page: () => ResetPassEmailView(),
      transitionDuration: Duration(milliseconds: 350),
      transition: Transition.cupertinoDialog,
    ),
    GetPage(
      name: RoutesName.resetPassPasswordView,
      page: () => ResetPassPasswordView(),
      transitionDuration: Duration(milliseconds: 350),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: RoutesName.mainScreen,
      page: () => MainScreen(),
      transitionDuration: Duration(milliseconds: 400),
      transition: Transition.cupertinoDialog,
    ),
    GetPage(
      name: RoutesName.homeScreen,
      page: () => HomeScreen(),
      transitionDuration: Duration(milliseconds: 350),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: RoutesName.createQuizOne,
      page: () => CreateQuizOne(),
      transitionDuration: Duration(milliseconds: 350),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: RoutesName.chooseCategory,
      page: () => ChooseCategory(),
      transitionDuration: Duration(milliseconds: 350),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: RoutesName.quizScreen,
      page: () => QuizScreen(),
      transitionDuration: Duration(milliseconds: 350),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: RoutesName.playQuiz,
      page: () => PlayQuiz(),
      transitionDuration: Duration(milliseconds: 350),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: RoutesName.quiz1,
      page: () => Quiz1(),
      transitionDuration: Duration(milliseconds: 350),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: RoutesName.quiz1a,
      page: () => AnswerExplained(),
      transitionDuration: Duration(milliseconds: 350),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: RoutesName.quiz2,
      page: () => Quiz2(),
      transitionDuration: Duration(milliseconds: 350),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: RoutesName.quiz3,
      page: () => Quiz3(),
      transitionDuration: Duration(milliseconds: 350),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: RoutesName.quiz4,
      page: () => Quiz4(),
      transitionDuration: Duration(milliseconds: 350),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: RoutesName.quiz5,
      page: () => Quiz5(),
      transitionDuration: Duration(milliseconds: 350),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: RoutesName.quiz5a,
      page: () => AnswerExplained2(),
      transitionDuration: Duration(milliseconds: 350),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: RoutesName.quiz6,
      page: () => Quiz6(),
      transitionDuration: Duration(milliseconds: 350),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: RoutesName.quiz7,
      page: () => Quiz7(),
      transitionDuration: Duration(milliseconds: 350),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: RoutesName.quiz8,
      page: () => Quiz8(),
      transitionDuration: Duration(milliseconds: 350),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: RoutesName.resultView,
      page: () => ResultView(),
      transitionDuration: Duration(milliseconds: 350),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: RoutesName.settingView,
      page: () => SettingView(),
      transitionDuration: Duration(milliseconds: 350),
      transition: Transition.cupertino,
    ),
  ];
}
