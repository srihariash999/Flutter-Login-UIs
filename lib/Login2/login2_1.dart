import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class Login21 extends StatefulWidget {
  @override
  _Login21State createState() => _Login21State();
}

class _Login21State extends State<Login21> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAE3E0),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
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
            Container(
              height: MediaQuery.of(context).size.height * 0.40,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                "https://raw.githubusercontent.com/srihariash999/testMusic/master/img.png",
                fit: BoxFit.fitWidth,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              alignment: Alignment.centerLeft,
              child: Text(
                "Sign in",
                style: GoogleFonts.robotoSlab(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 30.0),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            //Text Field for username

            Container(
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
              alignment: Alignment.centerLeft,
              child: Theme(
                data: Theme.of(context).copyWith(
                  primaryColor: Colors.brown[400],
                ),
                child: TextField(
                  // controller: _username,
                  decoration: InputDecoration(
                    labelText: "Username",
                    hintText: "Enter your username",
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
                      color: Colors.brown[400],
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                  cursorColor: Colors.brown,
                ),
              ),
            ),
            // Password text field
            Container(
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
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
                      color: Colors.brown[400],
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                  cursorColor: Colors.brown,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: RaisedButton(
                elevation: 1.5,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black54),
                    borderRadius: BorderRadius.circular(16.0)),
                color: Color(0xFFFAE3E0),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Login",
                    style: GoogleFonts.robotoSlab(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.black54,
                          fontSize: 20.0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
