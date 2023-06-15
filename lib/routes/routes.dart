import 'package:anime_app/screens/add_anime_title.dart';
import 'package:anime_app/screens/home_page.dart';
import 'package:anime_app/screens/login_register.dart';
import 'package:anime_app/screens/profile.dart';
import 'package:anime_app/screens/settings.dart';
import 'package:flutter/material.dart';

class RouteManager {
  static const String homePage = '/';
  static const String addAnimePage = '/animePage';
  static const String loginRegisterPage = '/loginRegisterPage';
  static const String profilePage = '/profilePage';
  static const String settingsPage = '/settingsPage';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    var valuePassed;

    if (settings.arguments != null) {
      valuePassed = settings.arguments as Map<String, dynamic>;
    }

    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (context) => const MainPage());

      case addAnimePage:
        return MaterialPageRoute(builder: (context) => const AddNewAnime());

      case loginRegisterPage:
        return MaterialPageRoute(builder: (context) => const LoginRegister());

      case profilePage:
        return MaterialPageRoute(builder: (context) => const Profile());

      case settingsPage:
        return MaterialPageRoute(builder: (context) => const Settings());

      default:
        throw const FormatException("Route not found");
    }
  }
}
