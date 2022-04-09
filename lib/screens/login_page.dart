// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:franchise/screens/home.dart';
import 'package:franchise/utils/constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final _idController = TextEditingController();
  final _passwordController = TextEditingController();

  bool press = false;
  Color onPressColor = const Color(0xFFd00657).withOpacity(0.7);
  Color buttonColor = const Color(0xFFd00657);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          elevation: 0.0,
          title: Hero(
            tag: "lead",
            child: Text(
              "Leads",
              style: poppinFonts(const Color(0xFFd00657), FontWeight.w700, 45),
            ),
          ),
        ),
        backgroundColor: Colors.white.withOpacity(0.95),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height / 10,
                ),
                Text(
                  "Hey,",
                  style: poppinFonts(Colors.black, FontWeight.bold, 40),
                ),
                Text("Login Now.",
                    style: poppinFonts(Colors.black, FontWeight.bold, 40)),
                SizedBox(
                  height: size.height / 30,
                ),
                // Row(
                //   children: [
                //     Text("if you are new/ "),
                //     Text(
                //       " Create New",
                //       style: poppinFonts(Colors.black, FontWeight.bold, 14),
                //     )
                //   ],
                // ),
                SizedBox(
                  height: size.height / 15,
                ),
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.multiline,
                          controller: _idController,
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                              ),
                              prefixIcon: Icon(
                                Icons.person,
                              ),
                              hintText: "User ID",
                              hintStyle: poppinFonts(
                                  Colors.grey, FontWeight.normal, 17)),
                          onChanged: (value) {
                            print(value);
                          },
                        ),
                        SizedBox(
                          height: size.height / 30,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.multiline,
                          controller: _passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                              ),
                              suffix: Text(
                                "Forgot?",
                                style: poppinFonts(const Color(0xFFd00657),
                                    FontWeight.bold, 17),
                              ),
                              prefixIcon: Icon(
                                Icons.lock,
                              ),
                              hintText: "Password",
                              hintStyle: poppinFonts(
                                  Colors.grey, FontWeight.normal, 17)),
                          onChanged: (value) {
                            print(value);
                          },
                        ),
                        SizedBox(
                          height: size.height / 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              press = !press;
                            });
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return MyHomePage();
                            }));
                          },
                          child: Container(
                            width: size.width/1.5,
                            height: size.height / 15,
                            decoration: BoxDecoration(
                                color: press ? onPressColor : buttonColor,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: kBoxShadows),
                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: size.width / 22,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ),
        ));
  }
}
