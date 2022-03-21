// ignore_for_file: unnecessary_this, unnecessary_new, unused_field, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:franchise/Model/circle_bg.dart';
import 'package:franchise/utils/constants.dart';

class AddLeads extends StatefulWidget {
  const AddLeads({Key? key}) : super(key: key);

  @override
  State<AddLeads> createState() => _AddLeadsState();
}

class _AddLeadsState extends State<AddLeads> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  List<String> locations = ['Lead Status', 'OPEN', 'IN PROCESS', 'CLOSED'];
  String _selectedLocation = 'Lead Status';
  final _dateController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  DateTime _dateTime = new DateTime(2022,12,24);

  final List<DropdownMenuItem> items = [];
  String selectedValue = "";

  bool press = false;
  Color onPressColor =  const Color(0xff01661c).withOpacity(0.5);
  Color buttonColor =  const Color(0xff01661c).withOpacity(0.7);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: CircleBackground(
               onPressed: () {},
                  widget: Icon(
                    Icons.notifications_none,
                    color: Color(0xFFd00657),
                    size: 20,
                  ),
                  height1: 50,
                  height2: 40,
                  width1: 50,
                  width2: 40,
              ),
          ),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: const Color(0xFFd00657),
        title: const Text(
          'Add Leads',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      backgroundColor: const Color(0xFFd00657),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 10,
              color: const Color(0xFFd00657),
              padding: const EdgeInsets.only(
                  top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            ),
            Expanded(
              child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.shade50, //Colors.green.shade100
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),
                  child: Form(
                    key: _formKey,
                    child: IntrinsicHeight(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                alignment: Alignment.center,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 50),
                                child: TextFormField(
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                    labelText: "Name",
                                    labelStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w100),
                                    prefixStyle: TextStyle(
                                        color: Colors.black, fontSize: 10),
                                  ),
                                  validator: (value) {
                                    return null;
                                  },
                                  onChanged: (_) {
                                    setState(() {});
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                alignment: Alignment.center,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 50),
                                child: TextFormField(
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                    labelText: "Lead ID",
                                    labelStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w100),
                                    prefixStyle: TextStyle(
                                        color: Colors.black, fontSize: 10),
                                  ),
                                  validator: (value) {
                                    return null;
                                  },
                                  onChanged: (_) {
                                    setState(() {});
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                alignment: Alignment.center,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 50),
                                child: TextFormField(
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                    labelText: "Email ID",
                                    labelStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w100),
                                    // suffixIcon: _clearIconButton(_passwordController),
                                    prefixStyle: TextStyle(
                                        color: Colors.black, fontSize: 10),
                                  ),
                                  validator: (value) {
                                    return null;
                                  },
                                  onChanged: (_) {
                                    setState(() {});
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                alignment: Alignment.center,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 50),
                                child: TextFormField(
                                  // controller: _passwordController,
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                    labelText: "Phone Number",
                                    labelStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w100),
                                    // suffixIcon: _clearIconButton(_passwordController),
                                    prefixStyle: TextStyle(
                                        color: Colors.black, fontSize: 10),
                                  ),
                                  validator: (value) {
                                    return null;
                                  },
                                  onChanged: (_) {
                                    setState(() {});
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                alignment: Alignment.center,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 50),
                                child: TextFormField(
                                  // controller: _passwordController,
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                    labelText: "Description",
                                    labelStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w100),
                                    // suffixIcon: _clearIconButton(_passwordController),
                                    prefixStyle: TextStyle(
                                        color: Colors.black, fontSize: 10),
                                  ),
                                  validator: (value) {
                                    return null;
                                  },
                                  onChanged: (_) {
                                    setState(() {});
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                alignment: Alignment.center,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 50),
                                child: TextFormField(
                                  // controller: _passwordController,
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                    labelText: "Instruction",

                                    labelStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w100),
                                    // suffixIcon: _clearIconButton(_passwordController),
                                    prefixStyle: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                  validator: (value) {
                                    return null;
                                  },
                                  onChanged: (_) {
                                    setState(() {});
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                alignment: Alignment.center,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 50),
                                child: TextFormField(
                                  keyboardType: TextInputType.none,
                                  controller: _dateController,
                                  decoration: InputDecoration(        
                                    hintText:"YYYY-MM-DD",
                                    labelText: "Date",
                                    labelStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w100),
                                    // suffixIcon: _clearIconButton(_passwordController),
                                  ),
                                  validator: (value) {
                                    return null;
                                  },
                                  onChanged: (_) {
                                    setState(() {});
                                  },   
                                  onTap: () async {
                                 DateTime? dateTime = await showDatePicker
                                 (context: context, 
                                 initialDate: DateTime.now(), 
                                 firstDate: DateTime(1900)
                                 lastDate: DateTime(2100));

                                  if(dateTime==null){
                                    return;
                                  }

                                  setState(() {
                                    _dateTime = dateTime;
                                    _dateController.text = _dateTime.toString().substring(0,10);
                                  });

                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                alignment: Alignment.center,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 50),
                                child: DropdownButton<String>(
                                    isExpanded: true,
                                    underline: SizedBox(
                                        height: 0.7,
                                        child: Container(
                                          color: Colors.black54,
                                        )),
                                    style: const TextStyle(
                                        color: Colors.black54,
                                        fontFamily: 'Poppins',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w200),
                                    items: locations.map((String val) {
                                      return DropdownMenuItem<String>(
                                        value: val,
                                        child: Text(
                                          val,
                                          style: const TextStyle(
                                              color: Colors.black54,
                                              fontFamily: 'Poppins',
                                              fontSize: 15,
                                              fontWeight: FontWeight.w200),
                                        ),
                                      );
                                    }).toList(),
                                    value: _selectedLocation,
                                    hint: const Text(
                                      "Lead Status",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontFamily: 'Poppins',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w200),
                                    ),
                                    onChanged: (newVal) {
                                      _selectedLocation = newVal!;
                                      this.setState(() {});
                                    }),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 24.0, left: 8.0, right: 8.0, bottom: 24.0),
                              child: Container(
                                // width: 500,

                                // color: Color(0xff01661c),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 50),
                                child: GestureDetector(
                                  onTap: (){
                                    //TODO

                                    setState(() {
                                      press =! press;
                                    });
                                  },
                                  child: Container(
                                width: size.height / 4,
                                height: size.height / 22,
                                decoration: BoxDecoration(
                                color: press ? onPressColor : buttonColor,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: kBoxShadows),
                                child: Center(
                                 child: Text(
                                "SAVE",
                                  style: TextStyle(
                                   fontFamily: 'Poppins',
                                    fontSize: size.width / 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                   ),
              ),
                                )
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
