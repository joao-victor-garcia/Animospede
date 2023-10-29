import 'package:flutter/material.dart';

Widget _buildSolicitationScreen(BuildContext context) {
  return const Scaffold(
    body: Text('solicitação'),
  );
}

class Solicitation extends StatelessWidget {
  const Solicitation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildSolicitationScreen(context);
  }
}