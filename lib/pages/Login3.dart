import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'Login4.dart';

class Login3 extends StatefulWidget {
  const Login3({Key? key}) : super(key: key);
  static String verifyId = "";

  @override
  State<Login3> createState() => _Login3State();
}

class _Login3State extends State<Login3> {
  var data = Get.arguments;
  var phone = '';
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    final db = FirebaseFirestore.instance;
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
                    'Phone number',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                  width: screenWidth,
                ),
                Expanded(
                  child: Center(
                      child: SizedBox(
                    width: screenWidth * 0.5,
                    child: TextField(
                      maxLength: 15,
                      keyboardType: TextInputType.phone,
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Your Phone',
                          hintStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600)),
                      onChanged: (value) => {phone = value, print(phone)},
                    ),
                  )),
                ),
                Row(
                  children: [
                    Container(width: screenWidth * 0.78),
                    GestureDetector(
                      onTap: () async {
                        final userData = <String, dynamic>{
                          "UserName": data[0],
                          "Birthdate": data[1],
                          "Phone": phone,
                        };
                        await FirebaseAuth.instance.verifyPhoneNumber(
                          phoneNumber: phone,
                          verificationCompleted:
                              (PhoneAuthCredential credential) {
                            db.collection("Users").add(userData).then(
                                (DocumentReference doc) => print(
                                    'DocumentSnapshot added with ID: ${doc.id}'));
                          },
                          verificationFailed: (FirebaseAuthException e) {},
                          codeSent: (String verificationId, int? resendToken) {
                            Get.to(Login4(),
                                transition: Transition.rightToLeft,
                                arguments: verificationId);
                          },
                          codeAutoRetrievalTimeout: (String verificationId) {},
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(14),
                        ),
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
                    )
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
