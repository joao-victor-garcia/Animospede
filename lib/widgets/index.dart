import 'package:flutter/material.dart';

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