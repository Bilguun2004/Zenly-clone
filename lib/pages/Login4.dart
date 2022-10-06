import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:zenly/pages/Login3.dart';

class Login4 extends StatefulWidget {
  const Login4({Key? key}) : super(key: key);

  @override
  State<Login4> createState() => _Login4State();
}

class _Login4State extends State<Login4> {
  FirebaseAuth auth = FirebaseAuth.instance;
  var data = Get.arguments;
  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    var verifyCode = "";
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
                    'Verify code',
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
                      maxLength: 6,
                      keyboardType: TextInputType.phone,
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Verify code',
                          hintStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600)),
                      onChanged: (value) => {verifyCode = value},
                    ),
                  )),
                ),
                Row(
                  children: [
                    Container(width: screenWidth * 0.78),
                    GestureDetector(
                      onTap: () async {
                        try {
                          PhoneAuthCredential credential =
                              PhoneAuthProvider.credential(
                                  verificationId: data[0], smsCode: verifyCode);

                          await auth.signInWithCredential(credential);
                        } catch (e) {
                          print(e);
                          print('wrong code');
                          print(data[0]);
                        }
                        ;
                        // PhoneAuthCredential credential =
                        //     PhoneAuthProvider.credential(
                        //         verificationId: Login3.verifyId,
                        //         smsCode: verifyCode);

                        // // Sign the user in (or link) with the credential
                        // await auth.signInWithCredential(credential);
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
