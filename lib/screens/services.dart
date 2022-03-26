import 'package:flutter/material.dart';
import 'package:franchise/utils/constants.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Services",style: poppinFonts(Colors.white, FontWeight.w600, 22),),
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
