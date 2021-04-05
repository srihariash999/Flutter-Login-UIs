import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_uis/Login4/login4_constants.dart';
import 'package:login_uis/Login4/login4_widgets.dart';

class Login4SignUp extends StatefulWidget {
  @override
  _Login4SignUpState createState() => _Login4SignUpState();
}

class _Login4SignUpState extends State<Login4SignUp> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _password2Controller = TextEditingController();
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
                    k4VerticalSpaceMassive,
                    TextWidget(
                        controller: _usernameController,
                        hint: "",
                        label: "Choose a username"),
                    k4VerticalSpaceSmall,
                    TextWidget(
                        controller: _phoneController,
                        textInputType: TextInputType.number,
                        hint: "",
                        label: "Enter your phone number"),
                    k4VerticalSpaceSmall,
                    TextWidget(
                        controller: _emailController,
                        hint: "",
                        textInputType: TextInputType.emailAddress,
                        label: "Enter your email"),
                    k4VerticalSpaceSmall,
                    PasswordWidget(
                      controller: _password2Controller,
                      hint: "",
                      label: "Password",
                    ),
                    k4VerticalSpaceSmall,
                    PasswordWidget(
                        controller: _passwordController,
                        hint: "",
                        label: "Password again"),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                k4VerticalSpaceMedium,
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22.0),
                    child: ButtonUI(childText: 'Register'),
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
        'Let\'s sign you up!',
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
        'Tell us about you a bit.',
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
