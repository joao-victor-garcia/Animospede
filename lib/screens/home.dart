import 'package:animospede/routes/index.dart';
import 'package:animospede/screens/services.dart';
import 'package:animospede/widgets/custom_bottom_bar.dart';
import 'package:animospede/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

const Color backgroundColor = Color(0xFFFFFFFF);
const Color searchBackground = Color(0xFFFAFAFA);

List<Widget> cardItems = [
  Widgets.buildCard(
    'Belinha',
    'São José do Rio Preto',
    'Busco passeador no Jardim Urano',
    'dogteste.png',
  ),
  Widgets.buildCard(
    'Belinha',
    'São José do Rio Preto',
    'Busco passeador no Jardim Urano',
    'dogteste.png',
  ),
  Widgets.buildCard(
    'Belinha',
    'São José do Rio Preto',
    'Busco passeador no Jardim Urano',
    'dogteste.png',
  ),
  Widgets.buildCard(
    'Belinha',
    'São José do Rio Preto',
    'Busco passeador no Jardim Urano',
    'dogteste.png',
  ),
];

Widget _buildHomeScreen() {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: backgroundColor,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Container(
                color: searchBackground,
                width: 329,
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                    ),
                    hintText: 'Pesquisar',
                    hintStyle: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.25)),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.filter_alt_outlined,
              ),
            ),
          ],
        ),
      ),
    ),
    body: Container(
      decoration: const BoxDecoration(
        color: backgroundColor,
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 150,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.92,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 10),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 300),
                    autoPlayCurve: Curves.easeInOut,
                  ),
                  items: cardItems,
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Navigator(
          key: navigatorKey,
          initialRoute: AppRoutes.home,
          onGenerateRoute: (routeSetting) => PageRouteBuilder(
            pageBuilder: (ctx, ani, ani1) {
              return getCurrentPage(routeSetting.name!, context);
            },
            transitionDuration: const Duration(seconds: 0),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
              navigatorKey.currentContext!,
              getCurrentRoute(type),
            );
          },
        ),
      ),
    );
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.home:
        return AppRoutes.home;
      case BottomBarEnum.servicos:
        return AppRoutes.services;
      case BottomBarEnum.perfil:
        return '/'; // AppRoutes.profile;
      default:
        return AppRoutes.home;
    }
  }

  Widget getCurrentPage(String currentRoute, BuildContext context) {
    switch (currentRoute) {
      case AppRoutes.home:
        return _buildHomeScreen();
      case AppRoutes.services:
        return const Services();
      default:
        return const DefaultWidget();
    }
  }
}
