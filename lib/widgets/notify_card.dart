// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:franchise/utils/constants.dart';

class NotifyCard extends StatefulWidget {
  final String desc;
  final String dateTime;
  final String title;

  const NotifyCard(
      {Key? key,
      required this.desc,
      required this.dateTime,
      required this.title})
      : super(key: key);

  @override
  State<NotifyCard> createState() => _NotifyCardState();
}

class _NotifyCardState extends State<NotifyCard> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 2.0,right: 2.0),
      child: Container(
        width: size.width,
        height: size.height/10,
        child: Card(  
          child: ListTile(
            trailing: Text(widget.dateTime,style: poppinFonts(Colors.grey, FontWeight.normal, 12),),
            title: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        const Icon(Icons.notifications_active),
                        const SizedBox(width: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(widget.title,
                                style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                )),
                            Text(
                              widget.desc,
                              style: const TextStyle(
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
