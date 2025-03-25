import 'dart:io';
import 'package:anytimetp_app/features/card/presentation/Message_screen.dart';
import 'package:anytimetp_app/features/card/presentation/add_to_card_screen.dart';
import 'package:anytimetp_app/features/card/presentation/edit_card_screen.dart';
import 'package:anytimetp_app/features/card/presentation/payment_method_screen.dart';
import 'package:flutter/cupertino.dart';
import '../features/auth/presentation/forgot_password_screen.dart';
import '../features/auth/presentation/locationaccess_screen.dart';
import '../features/auth/presentation/log_in_screen.dart';
import '../features/auth/presentation/sign_up_screen.dart';
import '../features/auth/presentation/verification_screen.dart';
import '../features/home/presentation/home_screen.dart';
import '../features/homedelivery/presentation/burger_screen.dart';
import '../features/homedelivery/presentation/categorise_screen.dart';
import '../features/homedelivery/presentation/food_details_screen.dart';
import '../features/homedelivery/presentation/home_delivery_screen.dart';
import '../features/homedelivery/presentation/search_screen.dart';
import '../features/manu/presentation/add_new_adress_screen.dart';
import '../features/manu/presentation/addresss_screen.dart';
import '../features/manu/presentation/edit_profile_screen.dart';
import '../features/manu/presentation/menu_screen.dart';
import '../features/manu/presentation/ongoing_screen.dart';
import '../features/manu/presentation/profile_screen.dart';
import '../features/report/presentation/productivity_screen.dart';
import '../features/timer/presentation/finish_screen.dart';
import '../features/timer/presentation/rassion_screen.dart';
import '../features/timer/presentation/timer_screen.dart';
import '../features/timer/presentation/work_screen.dart';
import '../loading_screen.dart';
import '../onboard_screen.dart';
import '../welcome_screen.dart';


final class Routes {
  static final Routes _routes = Routes._internal();
  Routes._internal();
  static Routes get instance => _routes;
  static const String homeScreen = '/homeScreen';
  static const String timerScreen = '/timerScreen';
  static const String workScreen = '/workScreen';
  static const String rasSionScreen = '/rasSionScreen';
  static const String finishScreen = '/finishScreen';
  static const String productivityScreen = '/productivityScreen';
  static const String welcomeScreen = '/welcomeScreen';
  static const String onboardScreen = '/onboardScreen';
  static const String loading = '/loading';
  static const String logInScreen = '/logInScreen';
  static const String signUpScreen = '/signUpScreen';
  static const String forgotPasswordScreen = '/forgotPasswordScreen';
  static const String verificationScreen = '/verificationScreen';
  static const String locationAccessScreen = '/locationAccessScreen';
  static const String homeDeliveryScreen = '/homeDeliveryScreen';
  static const String restaurantScreen = '/restaurantScreen';
  static const String burgerScreen = '/burgerScreen';
  static const String categoriseScreen = '/categoriseScreen';
  static const String foodDetailsScreen = '/foodDetailsScreen';
  static const String searchScreen = '/searchScreen';
  static const String ongoingScreen = '/ongoingScreen';
  static const String menuScreen = '/menuScreen';
  static const String profilescreen = '/profilescreen';
  static const String editProfileScreen = '/editProfileScreen';
  static const String addresssScreen = '/addresssScreen';
  static const String addNewAdressScreen = '/addNewAdressScreen';
  static const String editCardScreen = '/editCardScreen';
  static const String paymentMethodScreen = '/paymentMethodScreen';
  static const String addCardScreen = '/addCardScreen';
  static const String messageScreen = '/messageScreen';
}

final class RouteGenerator {
  static final RouteGenerator _routeGenerator = RouteGenerator._internal();
  RouteGenerator._internal();
  static RouteGenerator get instance => _routeGenerator;

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case Routes.homeScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const HomeScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const HomeScreen());

      case Routes.timerScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const TimerScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const TimerScreen());

      case Routes.workScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const WorkScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const WorkScreen());

      case Routes.rasSionScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const RasSionScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const RasSionScreen());

 case Routes.finishScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const FinishScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const FinishScreen());


case Routes.productivityScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const ProductivityScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const ProductivityScreen());

case Routes.welcomeScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const WelcomeScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const WelcomeScreen());

case Routes.onboardScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const OnboardScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const OnboardScreen());

case Routes.loading:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const Loading(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const Loading());

 case Routes.logInScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const LogInScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const LogInScreen());


 case Routes.signUpScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const SignUpScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const SignUpScreen());

case Routes.forgotPasswordScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const ForgotPasswordScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const ForgotPasswordScreen());

case Routes.verificationScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const VerificationScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const VerificationScreen());

case Routes.locationAccessScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const LocationAccessScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const LocationAccessScreen());

case Routes.homeDeliveryScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const HomeDeliveryScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const HomeDeliveryScreen());
//
// case Routes.restaurantScreen:
//         return Platform.isAndroid
//             ? _FadedTransitionRoute(widget: const RestaurantScreen(), settings: settings)
//             : CupertinoPageRoute(builder: (context) => const RestaurantScreen());

case Routes.burgerScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const BurgerScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const BurgerScreen());

case Routes.categoriseScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const CategoriseScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const CategoriseScreen());

case Routes.foodDetailsScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const FoodDetailsScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const FoodDetailsScreen());

case Routes.searchScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const SearchScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const SearchScreen());


case Routes.ongoingScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const OngoingScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const OngoingScreen());

case Routes.menuScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const MenuScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const MenuScreen());

case Routes.profilescreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const ProfileScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const ProfileScreen());

case Routes.editProfileScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const EditProfileScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const EditProfileScreen());


case Routes.addresssScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const AddresssScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const AddresssScreen());

case Routes.addNewAdressScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const AddNewAdressScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const AddNewAdressScreen());

// case Routes.editCardScreen:
//         return Platform.isAndroid
//             ? _FadedTransitionRoute(widget: const EditCardScreen(), settings: settings)
//             : CupertinoPageRoute(builder: (context) => const EditCardScreen());

case Routes.paymentMethodScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const PaymentMethodScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const PaymentMethodScreen());

case Routes.addCardScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const AddToCardScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const AddToCardScreen());

case Routes.messageScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const MessageScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const MessageScreen());







      default:
        return null;
    }
  }
}

//  weenAnimationBuilder(
//   child: Widget,
//   tween: Tween<double>(begin: 0, end: 1),
//   duration: Duration(milliseconds: 1000),
//   curve: Curves.bounceIn,
//   builder: (BuildContext context, double _val, Widget child) {
//     return Opacity(
//       opacity: _val,
//       child: Padding(
//         padding: EdgeInsets.only(top: _val * 50),
//         child: child
//       ),
//     );
//   },
// );

class _FadedTransitionRoute extends PageRouteBuilder {
  final Widget widget;
  @override
  final RouteSettings settings;

  _FadedTransitionRoute({required this.widget, required this.settings})
      : super(
    settings: settings,
    reverseTransitionDuration: const Duration(milliseconds: 1),
    pageBuilder: (BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation) {
      return widget;
    },
    transitionDuration: const Duration(milliseconds: 1),
    transitionsBuilder: (BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child) {
      return FadeTransition(
        opacity: CurvedAnimation(
          parent: animation,
          curve: Curves.ease,
        ),
        child: child,
      );
    },
  );
}

class ScreenTitle extends StatelessWidget {
  final Widget widget;

  const ScreenTitle({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: .5, end: 1),
      duration: const Duration(milliseconds: 500),
      curve: Curves.bounceIn,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: child,
        );
      },
      child: widget,
    );
  }
}
