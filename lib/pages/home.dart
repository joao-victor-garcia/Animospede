import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

const Color backgroundColor = Color(0xFFFFFFFF);
const Color searchBackground = Color(0xFFFAFAFA);

List<Widget> cardItems = [
  _buildCard(
    'Belinha',
    'São José do Rio Preto',
    'Busco passeador no Jardim Urano',
    'dogteste.png',
  ),
  _buildCard(
    'Belinha',
    'São José do Rio Preto',
    'Busco passeador no Jardim Urano',
    'dogteste.png',
  ),
  _buildCard(
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
  );
}

Widget _buildCard(
  String title,
  String subtitle,
  String text,
  String imagePath,
) {
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
            width: 130,
            height: double.infinity,
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Row(
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
                          Text(
                            text,
                            style: const TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
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