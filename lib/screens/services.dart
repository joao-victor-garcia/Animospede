import 'package:animospede/screens/create_service.dart';
import 'package:animospede/widgets/custom_card.dart';
import 'package:flutter/material.dart';

const Color searchBackground = Color(0xFFFAFAFA);

class Servico {
  int id;
  String title;
  String subtitle;
  String text;
  String imagePath;

  Servico(this.id, this.title, this.subtitle, this.text, this.imagePath);
}

Widget _buildServicesScreen(BuildContext context) {
  List<Servico> data = [
    Servico(
      2,
      'Passeador de cães',
      'São José do Rio Preto',
      'Busco passeador no Jardim Urano',
      'dogteste.png',
    ),
    Servico(
      2,
      'Passeador de cães',
      'São José do Rio Preto',
      'Busco passeador no Jardim Urano',
      'dogteste.png',
    ),
    Servico(
      2,
      'Passeador de cães',
      'São José do Rio Preto',
      'Busco passeador no Jardim Urano',
      'dogteste.png',
    ),
    Servico(
      2,
      'Passeador de cães',
      'São José do Rio Preto',
      'Busco passeador no Jardim Urano',
      'dogteste.png',
    ),
    Servico(
      2,
      'Passeador de cães',
      'São José do Rio Preto',
      'Busco passeador no Jardim Urano',
      'dogteste.png',
    ),
    Servico(
      2,
      'Passeador de cães',
      'São José do Rio Preto',
      'Busco passeador no Jardim Urano',
      'dogteste.png',
    ),
  ];

  void handleFloatingActionButton() {
    Navigator.pushNamed(context, '/createService');
  }

  return Scaffold(
    appBar: AppBar(
      backgroundColor: Theme.of(context).colorScheme.background,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          width: double.maxFinite,
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
    ),
    body: SizedBox(
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
                  height: 700,
                  child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      final item = data[index];

                      return SizedBox(
                        width: double.infinity,
                        height: 150,
                        child: CustomCard(
                          id: item.id,
                          title: item.title,
                          subtitle: item.subtitle,
                          text: item.text,
                          imagePath: item.imagePath,
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
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CreateService()),
        );
      },
      tooltip: 'Adicionar ou serviço ou solicitação',

      shape: const CircleBorder(),
      backgroundColor: Theme.of(context).colorScheme.primary,
      child: const Icon(
        Icons.add,
        color: Colors.white,
      ), // Ícone "+" usando Icons.add
    ),
  );
}

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildServicesScreen(context);
  }
}
