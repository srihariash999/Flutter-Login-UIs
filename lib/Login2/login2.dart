import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:loginUis/Login2/login2_1.dart';

class Login2 extends StatefulWidget {
  @override
  _Login2State createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          decoration: BoxDecoration(color: Color(0xFFE6EDF3)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20.0,
              ),
              //Back button

              Container(
                padding: EdgeInsets.only(top: 20.0),
                alignment: Alignment.topLeft,
                child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ),
              SizedBox(
                height: 30.0,
              ),
              Image.network(
                "https://raw.githubusercontent.com/srihariash999/testMusic/master/2.png",
                fit: BoxFit.fitWidth,
                height: MediaQuery.of(context).size.height * 0.55,
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                child: Text(
                  "Welcome To The Club, Pal.",
                  style: GoogleFonts.robotoSlab(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 26.0),
                  ),
                ),
              ),
              Container(
                child: Text(
                  "Awesomeness is one step away.",
                  style: GoogleFonts.robotoSlab(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                        fontSize: 16.0),
                  ),
                ),
              ),
              SizedBox(
                height: 80.0,
              ),
              Container(
                // ignore: deprecated_member_use
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0)),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login21(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Get Started",
                      style: GoogleFonts.robotoSlab(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 20.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
