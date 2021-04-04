import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login3 extends StatefulWidget {
  Login3({Key key}) : super(key: key);

  @override
  _Login3State createState() => _Login3State();
}

class _Login3State extends State<Login3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 30.0, left: 12.0),
                alignment: Alignment.topLeft,
                child: Icon(
                  Icons.arrow_back,
                  size: 30.0,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 50.0, left: 30.0),
                alignment: Alignment.topLeft,
                child: Text(
                  "Login",
                  style: GoogleFonts.robotoSlab(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 35.0),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 50.0),
                alignment: Alignment.centerLeft,
                child: Theme(
                  data: Theme.of(context).copyWith(
                    primaryColor: Colors.brown[400],
                    accentColor: Colors.orange,
                  ),
                  child: TextField(
                    // controller: _username,
                    decoration: InputDecoration(
                      labelText: "Username",
                      hintText: "Enter your username",
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0XFF92A770), width: 2.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0XFF92A770), width: 2.0),
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0XFF92A770), width: 2.0),
                      ),
                    ),
                    style: TextStyle(
                        color: Colors.brown[400],
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                    cursorColor: Colors.brown,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 50.0),
                alignment: Alignment.centerLeft,
                child: Theme(
                  data: Theme.of(context).copyWith(
                    primaryColor: Colors.brown[400],
                    accentColor: Colors.orange,
                  ),
                  child: TextField(
                    // controller: _password,
                    obscureText: true,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter your password",
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0XFF92A770), width: 2.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0XFF92A770), width: 2.0),
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0XFF92A770), width: 2.0),
                      ),
                    ),
                    style: TextStyle(
                        color: Colors.brown[400],
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                    cursorColor: Colors.brown,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(top: 40.0, left: 40.0),
                child: GestureDetector(
                  child: Text(
                    "Forgot Password?",
                    style: GoogleFonts.robotoSlab(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                          fontSize: 16.0),
                    ),
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
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 12.0, bottom: 12.0, left: 100.0, right: 100.0),
                    child: Text(
                      "Login",
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
          ),
        ),
      ),
    );
  }
}
