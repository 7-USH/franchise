import 'package:flutter/material.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Services'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Services Screen',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
