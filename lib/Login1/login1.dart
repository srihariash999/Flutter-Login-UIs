import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:google_fonts/google_fonts.dart';
import 'package:loginUis/Login1/login1_1.dart';

class Login1 extends StatefulWidget {
  @override
  _Login1State createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
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
                Container(
                  padding: EdgeInsets.only(bottom: 25.0),
                  alignment: Alignment.bottomRight,
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      "Farts & Balls",
                      style: GoogleFonts.modak(
                        textStyle:
                            TextStyle(color: Colors.white60, fontSize: 90.0),
                      ),
                    ),
                  ),
                ),
                BackdropFilter(
                  filter: ui.ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(bottom: 150.0, left: 50.0),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0)),
                      color: Color(0XFF92A770),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login11(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          " LET'S GO    >",
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
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.15,
                      left: MediaQuery.of(context).size.width * 0.10),
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Namaskaram !",
                    style: GoogleFonts.modak(
                      textStyle:
                          TextStyle(color: Color(0XFF92A770), fontSize: 40.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
