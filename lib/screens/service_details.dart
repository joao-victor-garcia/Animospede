import 'package:flutter/material.dart';

Widget _buildServiceDetailsScreen(BuildContext context, int serviceId) {
  return Scaffold(
    body: Text('solicitação $serviceId'),
  );
}

class ServiceDetails extends StatelessWidget {
  final int serviceId;

  const ServiceDetails({required this.serviceId, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildServiceDetailsScreen(context, serviceId);
  }
}
