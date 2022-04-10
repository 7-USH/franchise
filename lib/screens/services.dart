// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:franchise/utils/constants.dart';
import 'package:franchise/widgets/customDropDown.dart';
import 'package:franchise/widgets/servicedropdown.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
        // ignore: prefer_const_constructors
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Center(
              child: Text(
                "Leads",
                style: poppinFonts(Color(0xFFd00657), FontWeight.bold, 30),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ServiceCustomDropDown(),
            const SizedBox(
              height: 40,
            ),
            TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    shadowColor: MaterialStateProperty.all(Colors.transparent),
                    foregroundColor:
                        MaterialStateProperty.all(Colors.transparent)),
                onPressed: () async {
                  launch("https://www.google.com");
                },
                child: Text(
                  "Visit our Website",
                  style: poppinFonts(Colors.black, FontWeight.normal, 15),
                ))
          ],
        ),
      ),
    ));
  }
}
