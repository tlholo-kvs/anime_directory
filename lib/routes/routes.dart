import 'package:anime_app/screens/home_page.dart';
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
    }
  }
}
