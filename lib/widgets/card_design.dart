// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:franchise/screens/lead_form_designed.dart';
import 'package:franchise/utils/constants.dart';

class CardDesign extends StatelessWidget {
  final String name;
  final String leadId;
  final String desc;
  final String instr;
  final String status;
  final String email;
  final int phoneNumber;
  final String dateTime;

  const CardDesign(
      {Key? key,
      required this.name,
      required this.leadId,
      required this.desc,
      required this.instr,
      required this.email,
      required this.phoneNumber,
      required this.dateTime,
      required this.status})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: [
                  Text(this.name,
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      )),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        this.leadId,
                        style: const TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey.shade300,
              thickness: 0.40,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Icon(
                    Icons.call,
                   size: 15,
                    color: Color(0xFFd00657),
                  ),
                ),
                Text(
                  this.phoneNumber.toString(),
                  style: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Spacer(),
                const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Icon(
                    Icons.email_outlined,
                    size: 15.0,
                    color: Color(0xFFd00657),
                  ),
                ),
                Text(
                  this.email,
                  style: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            Text(
              this.desc,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              this.instr,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w300,
              ),
            ),
            Row(
              children: [
                Text(
                  this.status.toUpperCase(),
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(1.5),
                  child: Container(
                    width: 55,
                    height: 40,
                    margin: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [],
                    ),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        elevation: 3.7,
                        shadowColor: Colors.black.withOpacity(0.85),
                        backgroundColor: Colors.white,
                        // shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                      child: const Padding(
                          padding: EdgeInsets.all(0.0),
                          child: Icon(
                            Icons.edit_outlined,
                            color: Color(0xFFd00657),
                          )),
                      onPressed: () {
                        if (status == "OPEN") {
                           Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LeadFormDesign()));
                        }
                      },
                    ),
                  ),
                ),
               Padding(
                  padding: const EdgeInsets.all(1.5),
                  child: Container(
                    width: 55,
                    height: 40,
                    margin: const EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [],
                    ),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        elevation: 4,
                        shadowColor: Colors.black.withOpacity(0.85),
                        backgroundColor: Colors.white,
                        // shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                      child: Center(
                        child: const Padding(
                            padding: EdgeInsets.all(0.0),
                            child: Icon(
                              Icons.delete_outlined,
                              color: Color(0xFFd00657),
                            ),),
                      ),
                      onPressed: () {
                        if (status == "OPEN") {
                           Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const LeadFormDesign()));
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 4.0,top: 2.0),
              child: Center(
                child: Text(
                  "09-03-2022",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      elevation: 8,
      shadowColor: Colors.black,
      margin: const EdgeInsets.all(20),
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.white)),
    );
  }
}
