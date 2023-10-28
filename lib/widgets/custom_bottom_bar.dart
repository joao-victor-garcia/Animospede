import 'package:flutter/material.dart';
import '../utils/my_flutter_app_icons.dart';

enum BottomBarEnum {
  home,
  servicos,
  perfil,
}

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(key: key);

  final Function(BottomBarEnum)? onChanged;

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  static const Color tabActiveColor = Color(0xFFFA6650);
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      widget.onChanged!(BottomBarEnum.values[index]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
      selectedItemColor: tabActiveColor,
      backgroundColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 1,
      onTap: _onItemTapped,
    );
  }
}

class DefaultWidget extends StatelessWidget {
  const DefaultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(10),
      child: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
