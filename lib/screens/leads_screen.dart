import 'package:flutter/material.dart';
import 'package:franchise/utils/details.dart';
import 'package:franchise/widgets/card_design.dart';

class LeadPage extends StatelessWidget {
  const LeadPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.notifications_none,
                color: Colors.white,
              ),
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
          Container(
            height: 10,
            color: Color(0xFFd00657),
            padding: const EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
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
