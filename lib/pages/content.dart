import 'package:animospede/pages/home.dart';
import 'package:animospede/pages/profile.dart';
import 'package:animospede/pages/services.dart';
import 'package:flutter/material.dart';
import '../utils/my_flutter_app_icons.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({super.key});

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  static const Color tabActiveColor = Color(0xFFFA6650);
  final PageController _pageController = PageController();
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.animateToPage(index,
          duration: const Duration(milliseconds: 2), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: const [
          HomePage(),
          ServicesPage(),
          ProfilePage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(MyFlutterApp.homeicon),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(MyFlutterApp.servicesicon),
            label: 'Serviços',
          ),
          BottomNavigationBarItem(
            icon: Icon(MyFlutterApp.profileicon),
            label: 'Perfil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: tabActiveColor, // Cor do ícone selecionado
        onTap: _onItemTapped,
      ),
    );
  }
}