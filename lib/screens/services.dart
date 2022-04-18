// ignore_for_file: prefer_const_constructors, unused_element

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:franchise/screens/home.dart';
import 'package:franchise/screens/login_page.dart';
import 'package:franchise/utils/constants.dart';
import 'package:franchise/widgets/customDropDown.dart';
import 'package:franchise/widgets/servicedropdown.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({Key? key}) : super(key: key);

  void LogOut(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) {
      return LoginPage();
    }), (route) => false);
  }

  void displayDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
          title: const Text("Confirm logout"),
          content: const Text("Do you sure you want to Logout ?"),
          actions: [
            TextButton(
                onPressed: () {
                  LogOut(context);
                },
                child: Text("Yes")),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("No"))
          ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
        // ignore: prefer_const_constructors
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.logout_sharp,
                          color: Colors.transparent,
                        )),
                    Center(
                      child: Text(
                        "Leads",
                        style:
                            poppinFonts(Color(0xFFd00657), FontWeight.bold, 30),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          displayDialog(context);
                        },
                        icon: Icon(Icons.logout_sharp))
                  ]),
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
