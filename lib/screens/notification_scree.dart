import 'package:flutter/material.dart';
import 'package:franchise/utils/constants.dart';

class NotificationScreen extends StatefulWidget {
  NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.95),
      appBar: AppBar(
        centerTitle: true,
        title:  Text("Notifications",style: poppinFonts(Colors.white, FontWeight.w600, 22),)
      ),
    );
  }
}
