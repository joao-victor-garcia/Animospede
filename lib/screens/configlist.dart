import 'package:animospede/authentication/services/auth_service.dart';
import 'package:animospede/core/app_export.dart';
import 'package:animospede/screens/account.dart';
import 'package:animospede/authentication/screens/login.dart';
import 'package:animospede/screens/services_request.dart';
import 'package:animospede/screens/solicitation.dart';
import 'package:animospede/widgets/app_bar/appbar_iconbutton.dart';
import 'package:animospede/widgets/app_bar/appbar_image.dart';
import 'package:animospede/widgets/app_bar/custom_app_bar.dart';
import 'package:animospede/widgets/custom_elevated_button.dart';
import 'package:animospede/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';
import 'package:animospede/screens/services_advertising_list.dart';
import 'package:animospede/screens/splash.dart';

Widget _buildConfigListPage(context) {
  return Scaffold(
      
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/config_screen_profile_icon.png',
                    width: 25,
                    height: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/config_screen_advert_icon.png',
                    width: 25,
                    height: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/config_screen_services_icon.png',
                    width: 25,
                    height: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset(
                    'assets/config_screen_logout_icon.png',
                    width: 25,
                    height: 25,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 const Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Minha conta',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.left,
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Ver perfil de serviços',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.left,
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:  Text(
                    'Ver solicitações',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => Login())));
                    },
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/splash');
                      },
                      child: const Text(
                        'Sair',
                        style: TextStyle(color: Colors.red, fontSize: 20),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Account()));
                      },
                      child: Icon(Icons.arrow_forward_ios_sharp)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AdvertiseList()));
                      },
                      child: Icon(Icons.arrow_forward_ios_sharp)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Solicitations()));
                      },
                      child: Icon(Icons.arrow_forward_ios_sharp)),
                )
              ],
            ),
          )
        ],
      ));
}

class ConfigList extends StatelessWidget {
  const ConfigList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildConfigListPage(context);
  }
}
