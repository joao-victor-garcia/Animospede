import 'package:flutter/material.dart';

Widget _buildServicesRequestScreen(BuildContext context) {
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
                  image: AssetImage('assets/profileRequestCover.jpg'),
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
                                AssetImage('assets/profileRequest.jpg'),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Mel',
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
                    'Olá, meu nome é Mel e estou precisando de hospedagem.  Minha dona vai viajar por 5 dias. Sou muito dócil e gosto de atenção.')),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    'Categorias',
                    style: TextStyle(fontSize: 15),
                  ),
                  Column(
                    children: [
                      Text(
                        'Hospedagem',
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        'Canino',
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
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

class ServicesRequest extends StatelessWidget {
  const ServicesRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildServicesRequestScreen(context);
  }
}
