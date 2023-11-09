import 'package:flutter/material.dart';
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

Widget _buildSolicitationsScreen(BuildContext context) {
  List<Servico> data = [
    Servico(
      2,
      'Belinha',
      'São José do Rio Preto',
      'Busco passeador no Jardim Urano',
      'dogteste.png',
    ),
    Servico(
      2,
      'Mel',
      'São José do Rio Preto',
      'Busco passeador no Jardim Urano',
      'profileRequest.jpg',
    ),
   
  ];

  return Scaffold(
    appBar: AppBar(
      backgroundColor: Theme.of(context).colorScheme.background,
      elevation: 0,
      automaticallyImplyLeading: false,
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
                    'Solicitações ativas',
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
    
  );
}

class Solicitations extends StatelessWidget {
  const Solicitations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildSolicitationsScreen(context);
  }
}
