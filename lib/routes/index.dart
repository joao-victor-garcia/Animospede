import 'package:animospede/screens/create_service.dart';
import 'package:animospede/screens/divulgation.dart';
import 'package:animospede/screens/home.dart';
import 'package:animospede/screens/login.dart';
import 'package:animospede/screens/account.dart';
import 'package:animospede/screens/register.dart';
import 'package:animospede/screens/services.dart';
import 'package:animospede/screens/solicitation.dart';
import 'package:animospede/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:animospede/screens/configlist.dart';

class AppRoutes {
  static const String home = '/';
  static const String splash = '/splash';
  static const String login = '/login';
  static const String register = '/register';
  static const String profile = '/configlist';
  static const String services = '/services';
  static const String createService = '/createService';
  static const String serviceDetails = '/serviceDetails/:id';
  static const String solicitation = '/solicitation';
  static const String divulgation = '/divulgation';
  static const String configlist = '/configlist';

  static Map<String, WidgetBuilder> routes = {
    splash: (context) => const Splash(),
    home: (context) => Home(),
    login: (context) => const Login(),
    register: (context) => const Register(),
    services: (context) => const Services(),
    createService: (context) => const CreateService(),
    profile: (context) => const ConfigList(),
    solicitation: (context) => const Solicitations(),
    divulgation: (context) => const Divulgation(),
  };
}
