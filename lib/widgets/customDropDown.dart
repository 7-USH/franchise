// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:franchise/utils/constants.dart';

class CustomDropDown extends StatefulWidget {
  CustomDropDown({Key? key}) : super(key: key);

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  List<ExpansionItem> items = [
    ExpansionItem(
        icon: Icon(Icons.person),
        header: "Header 1",
        body:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vitae auctor eu augue ut lectus arcu."),
    ExpansionItem(
        icon: Icon(Icons.info),
        header: "Header 2",
        body:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vitae auctor eu augue ut lectus arcu."),
    ExpansionItem(
        icon: Icon(Icons.lock),
        header: "Header 3",
        body:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vitae auctor eu augue ut lectus arcu."),
    ExpansionItem(
        icon: Icon(Icons.logout),
        header: "Header 4",
        body:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vitae auctor eu augue ut lectus arcu."),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
        child: ExpansionPanelList(
      elevation: 0,
      dividerColor: Colors.transparent,
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          items[index].isExpanded = !items[index].isExpanded;
          for (int i = 0; i < items.length; i++) {
            if (i != index) {
              items[i].isExpanded = false;
            }
          }
        });
      },
      children: items.map((ExpansionItem item) {
        return ExpansionPanel(
            backgroundColor: Colors.transparent,
            isExpanded: item.isExpanded,
            headerBuilder: (BuildContext context, bool isExpanded) {
              return Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.all(8),
                child: Row(children: [
                  item.icon,
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    item.header,
                    style: poppinFonts(Colors.black, FontWeight.normal, 15),
                  ),
                ]),
              );
            },
            body: Container(
              padding: EdgeInsets.symmetric(horizontal:20),
              child: Text(
                item.body,
                textAlign: TextAlign.justify,
                style: poppinFonts(Colors.black, FontWeight.normal, 15),
              ),
            ));
      }).toList(),
    ));
  }
}

class ExpansionItem {
  bool isExpanded;
  final String header;
  final String body;
  final Icon icon;

  ExpansionItem(
      {this.isExpanded = false,
      required this.header,
      required this.body,
      required this.icon});
}