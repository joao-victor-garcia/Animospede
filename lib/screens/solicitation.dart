import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Solicitation(),
  ));
}

class Solicitation extends StatelessWidget {
  const Solicitation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = {
      'phoneNumber': '+55 (17) 99286-2586',
      'startTime': '18:00',
      'startDate': '22/09/2033',
      'endTime': '10:00',
      'endDate': '21/09/2022',
      'petType': 'Canino',
      'serviceType': 'Hospedagem',
      'description':
          'Olá, meu nome é Mel e estou precisando de hospedagem. Minha dona vai viajar por 5 dias.\nSou muito dócil e gosto de atenção.',
      'labels': ['Hospedagem', 'Canino'],
      'profileImage': AssetImage('dogprofile.jpg'),
      'backgroundImage': AssetImage('background.jpg'),
    };

    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 50),
                      width: double.infinity,
                      height: 231,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: data['backgroundImage'] as ImageProvider,
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                        ),
                        color: Colors.black.withOpacity(0.7),
                      ),
                    ),
                    Container(
                      width: 131,
                      height: 131,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Container(
                            width: 131,
                            height: 131,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: data['profileImage'] as ImageProvider,
                                fit: BoxFit.cover,
                              ),
                              border: Border.all(
                                color: Colors.white,
                                width: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(13, 8, 13, 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              'Sobre mim',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        data['description'] as String,
                        style: TextStyle(
                          color: Color(0xFF4F4F4F),
                          fontFamily: 'Poppins',
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 43,
                      ), // Espaço entre o texto e as etiquetas

                      Row(
                        children: (data['labels'] as List<String>)
                            .map<Widget>((label) {
                          return Container(
                            width: 140,
                            height: 26,
                            padding: EdgeInsets.symmetric(
                              vertical: 0,
                              horizontal: 12,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xFFFF8E54), // Cor de fundo
                              borderRadius: BorderRadius.circular(94),
                            ),
                            child: Center(
                              child: Text(
                                label,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                      SizedBox(height: 15),
                      Container(
                        width: 375,
                        height: 0.5,
                        color: Color.fromRGBO(0, 0, 0, 205), // Cor do texto
                      ),
                      SizedBox(height: 15),
                      Center(
                        child: Container(
                          width: 314,
                          height: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Início',
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  fontStyle: FontStyle.normal,
                                  height: 1.33333,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ), // Espaço entre "Início" e etiquetas
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 148,
                                    height: 28,
                                    padding: EdgeInsets.symmetric(
                                      vertical: 0,
                                      horizontal: 16,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF5F5F5), // Cor de fundo
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                      child: Text(
                                        data['startDate'] as String,
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ), // Espaço entre as etiquetas
                                  Container(
                                    width: 148,
                                    height: 28,
                                    padding: EdgeInsets.symmetric(
                                      vertical: 0,
                                      horizontal: 16,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF5F5F5), // Cor de fundo
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                      child: Text(
                                        data['startTime'] as String,
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ), // Espaço entre etiquetas e "Término"
                              Text(
                                'Término',
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  fontStyle: FontStyle.normal,
                                  height: 1.33333,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ), // Espaço entre "Término" e etiquetas
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 148,
                                    height: 28,
                                    padding: EdgeInsets.symmetric(
                                      vertical: 0,
                                      horizontal: 16,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF5F5F5), // Cor de fundo
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                      child: Text(
                                        data['endDate'] as String,
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ), // Espaço entre as etiquetas
                                  Container(
                                    width: 148,
                                    height: 28,
                                    padding: EdgeInsets.symmetric(
                                      vertical: 0,
                                      horizontal: 16,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF5F5F5), // Cor de fundo
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                      child: Text(
                                        data['endTime'] as String,
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 23),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Center(
                                  child: Text(
                                    'Contato',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              data['phoneNumber'] as String,
                              style: TextStyle(
                                color: Color(0xFF4F4F4F),
                                fontFamily: 'Poppins',
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
