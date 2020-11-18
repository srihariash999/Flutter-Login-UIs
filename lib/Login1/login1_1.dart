import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui' as ui;

import 'package:loginUis/Login1/login1_2.dart';

class Login11 extends StatefulWidget {
  @override
  _Login11State createState() => _Login11State();
}

class _Login11State extends State<Login11> {
  TextEditingController _username = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://images.unsplash.com/photo-1517999144091-3d9dca6d1e43?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
          ),
        ),
        child: BackdropFilter(
          filter: ui.ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
          child: Container(
            child: Stack(
              children: [
                //Blurred welcome text in the background (could use logo too)

                Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.15,
                      left: MediaQuery.of(context).size.width * 0.10),
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Welcome",
                    style: GoogleFonts.modak(
                      textStyle:
                          TextStyle(color: Colors.white60, fontSize: 65.0),
                    ),
                  ),
                ),

                //Please enter your username (hint text) UI

                BackdropFilter(
                  filter: ui.ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.60,
                        left: 20.0),
                    child: Text(
                      "Please enter your username",
                      style: GoogleFonts.concertOne(
                        textStyle:
                            TextStyle(color: Colors.white60, fontSize: 22.0),
                      ),
                    ),
                  ),
                ),

                //Text Field for username

                Container(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.50,
                      left: 20.0,
                      right: 45.0),
                  alignment: Alignment.bottomLeft,
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      primaryColor: Color(0XFF92A770),
                      accentColor: Colors.orange,
                    ),
                    child: TextField(
                      controller: _username,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0XFF92A770), width: 2.0),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0XFF92A770), width: 2.0),
                        ),
                        border: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0XFF92A770), width: 2.0),
                        ),
                      ),
                      style: TextStyle(
                          color: Colors.yellow[100],
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                      cursorColor: Colors.yellow,
                    ),
                  ),
                ),
                // Next Button
                Container(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.40,
                    left: MediaQuery.of(context).size.width * 0.25,
                  ),
                  alignment: Alignment.bottomLeft,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0)),
                    color: Color(0XFF92A770),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login12(
                            username: _username.text,
                          ),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        " NEXT   >",
                        style: GoogleFonts.fredokaOne(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white60,
                              fontSize: 25.0),
                        ),
                      ),
                    ),
                  ),
                ),

                //Back button

                Container(
                  padding: EdgeInsets.only(top: 20.0),
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_outlined,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
