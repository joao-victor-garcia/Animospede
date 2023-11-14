import 'dart:js';
import 'dart:math';

import 'package:animospede/screens/account.dart';
import 'package:flutter/material.dart';
import 'package:animospede/main.dart';

Widget _buildCard(
  String title,
  String subtitle,
  String text,
  String imagePath,
) {
  return Card(
    elevation: 1,
    color: const Color(0xFFF5F5FA),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(0),
      ),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [        
        ClipRRect(          
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

class ProfileCard extends StatefulWidget{
  const ProfileCard({super.key});
@override
State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard>{
  @override
  Widget build(BuildContext context){
    return Container(
          height: 200,
          width: 450,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3)
                
                )]),
          child: Stack(
          children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 180,
                        height: 140,
                        color: Colors.black38,
                        
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Pedro',
                                  style:TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20, 
                                  ),
                                ),
                          ],
                        ),
                        Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.pin_drop_outlined,
                                  color: Color(0xFF5533EA),
                                  size: 16,
                                ),
                                Text(
                                  'São José do Rio Preto',
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                        Text('Ofereço serviços de passeio',
                        style: TextStyle(
                                fontSize: 13
                                ),
                          )            
                      ],
                    ),
                  ),
                  ],
                  ),
                  
          ],
                  )
              );
      
  }
}

class Widgets {

  static Widget buildCard(
    String title,
    String subtitle,
    String text,
    String imagePath,
  ) {
    return _buildCard(
      title,
      subtitle,
      text,
      imagePath,
    );
  }
    
}
