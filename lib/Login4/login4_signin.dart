import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_uis/Login4/login4_constants.dart';
import 'package:login_uis/Login4/login4_register.dart';
import 'package:login_uis/Login4/login4_widgets.dart';

class Login4Signin extends StatefulWidget {
  @override
  _Login4SigninState createState() => _Login4SigninState();
}

class _Login4SigninState extends State<Login4Signin> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: k4backgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    k4VerticalSpaceSmall,
                    BackButton(),
                    k4VerticalSpaceSmall,
                    GreetingTitleWidget(),
                    k4VerticalSpaceSmall,
                    GreetingWidget1(),
                    k4VerticalSpaceSmall,
                    GreetingWidget2(),
                    k4VerticalSpaceMassive,
                    TextWidget(
                        controller: _usernameController,
                        hint: "",
                        label: "Phone, email or username"),
                    k4VerticalSpaceSmall,
                    PasswordWidget(
                      controller: _passwordController,
                      hint: "",
                      label: "Password",
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                k4VerticalSpaceMedium,
                RegisterTextWidget(),
                k4VerticalSpaceSmall,
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22.0),
                    child: ButtonUI(childText: 'Sign In'),
                  ),
                ),
                k4VerticalSpaceSmall,
              ],
            )
          ],
        ),
      ),
    );
  }
}

class BackButton extends StatelessWidget {
  const BackButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: SvgPicture.asset(
            'assets/undo.svg',
            color: Colors.white,
            height: 35.0,
            width: 35.0,
            semanticsLabel: 'Go Back',
          ),
        ),
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
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: Text(
        'Let\'s sign you in.',
        textAlign: TextAlign.center,
        style: GoogleFonts.ubuntu(
          textStyle: TextStyle(
            color: Colors.white,
            fontSize: 36.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class GreetingWidget1 extends StatelessWidget {
  const GreetingWidget1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: Text(
        'Welcome back.',
        textAlign: TextAlign.center,
        style: GoogleFonts.ubuntu(
          textStyle: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

class GreetingWidget2 extends StatelessWidget {
  const GreetingWidget2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: Text(
        'You\'ve been missed!',
        textAlign: TextAlign.center,
        style: GoogleFonts.ubuntu(
          textStyle: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

class RegisterTextWidget extends StatelessWidget {
  const RegisterTextWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account? ',
          textAlign: TextAlign.center,
          style: GoogleFonts.ubuntu(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => Login4SignUp(),
              ),
            );
          },
          child: Text(
            'Register',
            textAlign: TextAlign.center,
            style: GoogleFonts.ubuntu(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
