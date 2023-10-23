import 'dart:js';

import 'package:animospede/widgets/index.dart';
import 'package:flutter/material.dart';

const Color backgroundColor = Color(0xFFFFFFFF);
const Color searchBackground = Color(0xFFFAFAFA);

class Servico {
  String title;
  String subtitle;
  String text;
  String imagePath;

  Servico(this.title, this.subtitle, this.text, this.imagePath);
}

Widget _buildServicesPage(BuildContext context) {
  // list of items
  List<Servico> data = [
    Servico(
      'Passeador de cães',
      'São José do Rio Preto',
      'Busco passeador no Jardim Urano',
      'dogteste.png',
    ),
    Servico(
      'Passeador de cães',
      'São José do Rio Preto',
      'Busco passeador no Jardim Urano',
      'dogteste.png',
    ),
    Servico(
      'Passeador de cães',
      'São José do Rio Preto',
      'Busco passeador no Jardim Urano',
      'dogteste.png',
    ),
    Servico(
      'Passeador de cães',
      'São José do Rio Preto',
      'Busco passeador no Jardim Urano',
      'dogteste.png',
    ),
    Servico(
      'Passeador de cães',
      'São José do Rio Preto',
      'Busco passeador no Jardim Urano',
      'dogteste.png',
    ),
    Servico(
      'Passeador de cães',
      'São José do Rio Preto',
      'Busco passeador no Jardim Urano',
      'dogteste.png',
    ),
  ];

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
      width: double.infinity,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(13),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 5),
                  child: const Text(
                    'Serviços em sua região',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 490,
                  child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      final item = data[index];

                      return SizedBox(
                        width: double.infinity,
                        height: 150,
                        child: Widgets.buildCard(
                          item.title,
                          item.subtitle,
                          item.text,
                          item.imagePath,
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        // Ação a ser realizada quando o botão for pressionado
      },
      shape: const CircleBorder(),
      backgroundColor: Theme.of(context).colorScheme.primary,
      child: const Icon(
        Icons.add,
        color: Colors.white,
      ), // Ícone "+" usando Icons.add
    ),
  );
}

class ServicesPage extends StatelessWidget {
  const ServicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildServicesPage(context);
  }
}
