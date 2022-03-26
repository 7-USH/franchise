import 'package:flutter/material.dart';
import 'package:franchise/utils/constants.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile",style: poppinFonts(Colors.white, FontWeight.w600, 22),),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Profile Screen',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
