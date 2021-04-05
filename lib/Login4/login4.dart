import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_uis/Login4/login4_constants.dart';
import 'package:login_uis/Login4/login4_signin.dart';
import 'package:login_uis/Login4/login4_widgets.dart';


//https://dribbble.com/shots/14503235--Sign-In-Register/attachments/6188725?mode=media

class Login4 extends StatefulWidget {
  Login4({Key key}) : super(key: key);

  @override
  _Login4State createState() => _Login4State();
}

class _Login4State extends State<Login4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: k4backgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                k4VerticalSpaceMassive,
                ImageWidget(),
                k4VerticalSpaceMassive,
                GreetingTitleWidget(),
                k4VerticalSpaceMedium,
                AdditionalInfoWidget(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: RegisterLoginButton(),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network(
        k4IllustartedImageLink,
        height: MediaQuery.of(context).size.height * 0.35,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
    );
  }
}

class GreetingTitleWidget extends StatelessWidget {
  const GreetingTitleWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Enterprise team collaboration.',
        textAlign: TextAlign.center,
        style: GoogleFonts.ubuntu(
          textStyle: TextStyle(color: Colors.white, fontSize: 36.0),
        ),
      ),
    );
  }
}

class AdditionalInfoWidget extends StatelessWidget {
  const AdditionalInfoWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 36.0),
      child: Text(
        'Bring together your files, your tools, projects and people. Including a new mobile and desktop application.',
        textAlign: TextAlign.center,
        style: GoogleFonts.ubuntu(
          textStyle: TextStyle(
            color: Colors.white70,
            fontSize: 18.0,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}

class RegisterLoginButton extends StatelessWidget {
  const RegisterLoginButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Login4Signin(),
            ),
          );
        },
        child: Container(
          height: 60.0,
          decoration: BoxDecoration(
            color: k4LighterBackgroundColor,
            borderRadius: BorderRadius.circular(18.0),
          ),
          child: Row(
            children: [
              Expanded(
                child: ButtonUI(childText: "Register"),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "Login",
                    style: GoogleFonts.ubuntu(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
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
