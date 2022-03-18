import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

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

  @override
  void initState() {
    super.initState();
  }

  final List<DropdownMenuItem> items = [];
  String selectedValue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: const Align(
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
      body: Column(
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
                  color: Colors.green.shade100,
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
                              padding: const EdgeInsets.symmetric(horizontal: 50),
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
                              padding: const EdgeInsets.symmetric(horizontal: 50),
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
                              padding: const EdgeInsets.symmetric(horizontal: 50),
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
                              padding: const EdgeInsets.symmetric(horizontal: 50),
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
                              padding: const EdgeInsets.symmetric(horizontal: 50),
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
                              padding: const EdgeInsets.symmetric(horizontal: 50),
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
                                // controller: _passwordController,
                                obscureText: true,
                                decoration: const InputDecoration(
                                  labelText: "Date", hintText: "DD-MM-YYYY",
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
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xff01661c).withOpacity(0.7),
                                  minimumSize: const Size(500, 50),
                                  // shadowColor: Colors.black,
                                  onPrimary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(0.0),
                                  child: Text(
                                    "SAVE",
                                    style: TextStyle(
                                        fontFamily: 'Poppins', fontSize: 15.0),
                                  ),
                                ),
                                onPressed: () {},
                              ),
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
    );
  }
}
