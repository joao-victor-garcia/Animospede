import 'package:flutter/material.dart';

Widget _buildRequestListScreen(BuildContext context) {
  return const Scaffold(
    body: Text('lista de solicitações de serviço'),
  );
}

class RequestList extends StatelessWidget {
  const RequestList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildRequestListScreen(context);
  }
}