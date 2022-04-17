// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, deprecated_member_use, unused_local_variable, unused_field, unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:franchise/Model/login_model.dart';
import 'package:franchise/Networking/api_calling.dart';
import 'package:franchise/screens/home.dart';
import 'package:franchise/screens/wrapper.dart';
import 'package:franchise/utils/constants.dart';
import 'dart:convert';

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
  final passwordString = '';
  final phoneNumber = '';
  late LoginRequestModel object;
  bool isApiCallProcess = false;

  bool press = false;
  Color onPressColor = const Color(0xFFd00657).withOpacity(0.7);
  Color buttonColor = const Color(0xFFd00657);

  late final NetWorking apiObject;

  @override
  void initState() {
    object = LoginRequestModel(mobile: "", password: "");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Wrapper(
      isAsynCall: isApiCallProcess,
      child: _uiPage(context),
    );
  }

  Widget _uiPage(BuildContext context) {
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
                  height: size.height / 11,
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
                              suffix: GestureDetector(
                                onTap: () async {
                                  apiObject = NetWorking(
                                      password: "",
                                      phoneNumber: _idController.text);

                                  String? data =
                                      await apiObject.forgetPassword();

                                  Map valueMap = jsonDecode(data);

                                  String text;

                                  if (valueMap['status'] == 1) {
                                    text =
                                        "New Password & Login Details Sent On E-mail";
                                  } else {
                                    text =
                                        "Something went Wrong, please try again !";
                                  }
                                  final snackBar =
                                      SnackBar(content: Text(text));
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                },
                                child: Text(
                                  "Forgot?",
                                  style: poppinFonts(const Color(0xFFd00657),
                                      FontWeight.bold, 17),
                                ),
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
                          onTap: () async {
                            setState(() {
                              press = !press;
                            });
                            object.mobile = _idController.text;
                            object.password = _passwordController.text;

                            setState(() {
                              isApiCallProcess = true;
                            });

                            ApiService apiService = ApiService();
                            apiService.login(object).then((value) {
                              setState(() {
                                isApiCallProcess = false;
                              });

                              if (value.status == 1) {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) {
                                  return MyHomePage();
                                }));
                              }
                              else {
                                final snackBar =
                                    SnackBar(content: Text(value.message));
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              }

                            });

                            print(object.toJson());
                          },
                          child: Container(
                            width: size.width / 1.5,
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
