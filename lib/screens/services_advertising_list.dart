import 'package:flutter/material.dart';

Widget _buildAdvertiseListScreen(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/img_rectangle53.png'),
                  fit: BoxFit.cover,
                )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 80,
                            backgroundImage:
                                AssetImage('assets/profileCard.jpg'),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Pedro',
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
                child: Text(
                    'Olá, meu nome é Pedro,É uma honra estar aqui hoje para compartilhar com vocês minha paixão por cuidar de animais. Como cuidador,  minha missão vai além de simplesmente alimentar e abrigar. É sobre proporcionar-lhes amor, carinho e uma qualidade de vida que merecem Atendo passeios no bairro do Higienópolis e hospedagens de cães e gatos.')),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    'Taxa horária',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    '\$30',
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Serviços concluídos',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    '90',
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Avaliação',
                    style: TextStyle(fontSize: 15),
                  ),
                  Row(
                    children: [
                      Text(
                        '5',
                        style: TextStyle(fontSize: 25),
                      ),
                      Icon(Icons.star)
                    ],
                  )
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Contato',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'Serviços',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '(17)98555-6888',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Column(
                children: [
                  Text(
                    'Hospedagem',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    'Passeio',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ));
}

class AdvertiseList extends StatelessWidget {
  const AdvertiseList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildAdvertiseListScreen(context);
  }
}
