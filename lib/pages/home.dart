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

Widget _buildHomePage() {
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
                    autoPlayAnimationDuration: const Duration(milliseconds: 300),
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

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key); // Adicione o parâmetro nomeado 'key'

  @override
  Widget build(BuildContext context) {
    return _buildHomePage();
  }
}