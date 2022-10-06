import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:zenly/pages/Login2.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    String userName = '';
    TextEditingController nameController = TextEditingController();
    return (Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        color: Color.fromARGB(255, 8, 188, 252),
        child: Padding(
            padding: EdgeInsets.only(top: 22),
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(children: [
                Container(
                  child: Text(
                    userName,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                  width: screenWidth,
                ),
                Container(
                  width: screenWidth,
                  child: Text(
                    "WHATS'S YOUR NAME?",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                      child: SizedBox(
                    width: screenWidth * 0.5,
                    child: TextField(
                      controller: nameController,
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Your Name',
                          hintStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600)),
                      onChanged: (text) {
                        userName = (text);
                      },
                    ),
                  )),
                ),
                Row(
                  children: [
                    Container(width: screenWidth * 0.78),
                    GestureDetector(
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(14)),
                          child: Center(
                            child: Text(
                              '->',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 30,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        onTap: () {
                          Get.to(Login2(),
                              transition: Transition.rightToLeft,
                              arguments: [nameController.text]);
                        })
                  ],
                ),
                SizedBox(
                  height: 10,
                )
              ]),
            )),
      ),
    ));
  }
}
