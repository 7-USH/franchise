import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:franchise/utils/constants.dart';


class SpinnerPage extends StatefulWidget {
  const SpinnerPage({Key? key}) : super(key: key);

  @override
  State<SpinnerPage> createState() => _SpinnerPageState();
}

class _SpinnerPageState extends State<SpinnerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Leads",style: poppinFonts(const Color(0xFFd00657), FontWeight.bold, 30),),
          const SizedBox(height: 25,),
          const SpinKitCircle(
             color: Color(0xFFd00657),
          size: 60.0,
          ),
        ],
      ));
  }
}