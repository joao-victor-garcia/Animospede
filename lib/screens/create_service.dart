import 'package:flutter/material.dart';

Widget _buildServiceScreen(context) {
  return const Scaffold(
    body: Text('Service'),
  );
}

class CreateService extends StatelessWidget {
  const CreateService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildServiceScreen(context);
  }
}
