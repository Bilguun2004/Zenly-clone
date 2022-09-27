import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login3 extends StatefulWidget {
  const Login3({Key? key}) : super(key: key);

  @override
  State<Login3> createState() => _Login3State();
}

class _Login3State extends State<Login3> {
  @override
  Widget build(BuildContext context) {
    String phone = '';
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
                      onChanged: (text) {
                        phone == (text);
                      },
                    ),
                  )),
                ),
                Row(
                  children: [
                    Container(width: screenWidth * 0.78),
                    Container(
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
