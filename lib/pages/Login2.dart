import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:zenly/pages/Login3.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:get/get.dart';

class Login2 extends StatefulWidget {
  const Login2({Key? key}) : super(key: key);

  @override
  State<Login2> createState() => _LoginState();
}

class _LoginState extends State<Login2> {
  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    String datee = '';
    TextEditingController monthController = TextEditingController();
    TextEditingController dayController = TextEditingController();
    TextEditingController yearController = TextEditingController();
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
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
                    'Hi ' + data[0],
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
                    "WHATS'S YOUR BIRTHDAY?",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                      child: TextButton(
                          onPressed: () {
                            DatePicker.showDatePicker(context,
                                showTitleActions: true,
                                minTime: DateTime(1900, 1, 1),
                                maxTime: DateTime.now(), onChanged: (date) {
                              print('change $datee asdasdasdas');
                            }, onConfirm: (date) {
                              datee == date;
                              print('confirm $date');
                            },
                                currentTime: DateTime.now(),
                                locale: LocaleType.zh);
                          },
                          child: Text(
                            'Your Birthdate',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 30,
                                fontWeight: FontWeight.w500),
                          ))),
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
                          Get.to(Login3(),
                              transition: Transition.rightToLeft,
                              arguments: [data[0], datee]);
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
