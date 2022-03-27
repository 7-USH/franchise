// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:franchise/Model/circle_bg.dart';
import 'package:franchise/screens/notification_screen.dart';
import 'package:franchise/utils/details.dart';
import 'package:franchise/widgets/card_design.dart';

class LeadPage extends StatelessWidget {
  const LeadPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors
          flexibleSpace: Align(
            alignment: Alignment.centerRight,
            // ignore: prefer_const_constructors
            child: Padding(
              padding: EdgeInsets.all(9.0),
              child: CircleBackground(
                onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return NotificationScreen();
                    }));
                },
                  widget: Icon(
                    Icons.notifications_none,
                    color: Color(0xFFd00657),
                    size: 20,
                  ),
                  height1: 50,
                  height2: 40,
                  width1: 50,
                  width2: 40,
                
              )
            ),
          ),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Color(0xFFd00657),
          title: Text(
            'Leads',
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: 30.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        backgroundColor:Color(0xFFd00657),
        body: Column(children: [
              ClipPath(
            clipper: ArcClipper(),
            child: Container(
              height: 8,
              color: Colors.pink,
              child: Center(child: Text("ArcClipper()")),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade50,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: Details.length,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(                    
                    child: CardDesign(
                      name: Details[index].name,
                      dateTime: DateTime.now().toString(),
                      desc: Details[index].description,
                      email: Details[index].emailID,
                      instr: Details[index].instructions,
                      leadId: Details[index].leadID,
                      phoneNumber: Details[index].phoneNumber,
                      status: Details[index].status,
                    ),
                  );
                },
              ),
            ),
          ),
        ]));
  }
}
