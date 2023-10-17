import 'package:flutter/material.dart';
import '../utils/my_flutter_app_icons.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const Color backgroundColor = Color(0xFFFFFFFF);
  static const Color searchBackground = Color(0xFFFAFAFA);
  static const Color tabActiveColor = Color(0xFFFA6650);
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> cardItems = [
    _buildCard('Belinha', 'São José do Rio Preto',
        'Busco passeador no Jardim Urano', 'dogteste.png'),
    _buildCard('Belinha', 'São José do Rio Preto',
        'Busco passeador no Jardim Urano', 'dogteste.png'),
    _buildCard('Belinha', 'São José do Rio Preto',
        'Busco passeador no Jardim Urano', 'dogteste.png'),
  ];

  @override
  Widget build(BuildContext context) {
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
                      hintStyle:
                          TextStyle(color: Color.fromRGBO(0, 0, 0, 0.25)),
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
                      height: 200,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.92,
                    ),
                    items: cardItems,
                  ),
                ),
              ],
            )
          ],
        ),
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

Widget _buildCard(
    String title, String subtitle, String text, String imagePath) {
  return Card(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center, // Alinhe verticalmente
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12.0),
            bottomLeft: Radius.circular(12.0),
          ),
          child: SizedBox(
            width: 150, // Largura da imagem à esquerda
            height: double.infinity, // A imagem ocupará toda a altura
            child: Image.asset(
              imagePath,
              fit: BoxFit
                  .cover, // Redimensionar a imagem para preencher a altura
            ),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Alinhe verticalmente no centro
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                subtitle: Row(
                  children: [
                    const Icon(
                      Icons.pin_drop_outlined,
                      color: Color(0xFF5533EA),
                      size: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 3),
                      child: Text(
                        subtitle,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 13,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
