import 'package:animospede/screens/create_service.dart';
import 'package:animospede/screens/home.dart';
import 'package:animospede/screens/login.dart';
import 'package:animospede/screens/register.dart';
import 'package:animospede/screens/services.dart';
import 'package:animospede/screens/splash.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String home = '/';
  static const String splash = '/splash';
  static const String login = '/login';
  static const String register = '/register';
  static const String myProfile = '/my-profile';
  static const String services = '/services';
  static const String serviceDetail = '/service-detail';
  static const String serviceCreate = '/service-create';

  static Map<String, WidgetBuilder> routes = {
    splash: (context) => const Splash(),
    home: (context) => Home(),
    login: (context) => const Login(),
    register: (context) => const Register(),
    services: (context) => const Services(),
    serviceCreate: (context) => const CreateService(),
  };
}
