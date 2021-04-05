import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_uis/Login4/login4_constants.dart';

class ButtonUI extends StatelessWidget {
  final String childText;

  const ButtonUI({
    Key key,
    @required this.childText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      padding: EdgeInsets.only(
        top: 14.0,
        bottom: 14.0,
        left: 20.0,
        right: 20.0,
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Text(
        childText,
        style: GoogleFonts.ubuntu(
          textStyle: TextStyle(
            color: k4backgroundColor,
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final String label;
  final bool showSuffix;
  final TextInputType textInputType;
  const TextWidget({
    Key key,
    @required this.controller,
    @required this.hint,
    @required this.label,
    this.textInputType,
    this.showSuffix,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: TextField(
        controller: controller,
        style: k4HintStyle,
        keyboardType: textInputType ?? TextInputType.text,
        decoration: InputDecoration(
          suffixIcon: InkWell(
            child: Icon(
              Icons.alternate_email,
              color: showSuffix != null
                  ? showSuffix
                      ? Colors.white60
                      : k4backgroundColor
                  : k4backgroundColor,
            ),
            onTap: () {},
          ),
          fillColor: k4backgroundColor,
          filled: true,
          hintStyle: k4HintStyle,
          hintText: hint,
          labelStyle: k4HintStyle,
          labelText: label,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white60,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(16.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white60,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(16.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white60,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
      ),
    );
  }
}

class PasswordWidget extends StatefulWidget {
  final TextEditingController controller;
  final String hint;
  final String label;
  const PasswordWidget({
    Key key,
    @required this.controller,
    @required this.hint,
    @required this.label,
  }) : super(key: key);

  @override
  _PasswordWidgetState createState() => _PasswordWidgetState();
}

class _PasswordWidgetState extends State<PasswordWidget> {
  bool _obscure = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: TextField(
        controller: widget.controller,
        obscureText: _obscure,
        style: k4HintStyle,
        decoration: InputDecoration(
          suffixIcon: InkWell(
            child: Icon(
              _obscure ? Icons.lock_outline : Icons.lock_open_outlined,
              color: Colors.white60,
            ),
            onTap: () {
              setState(() {
                _obscure = !_obscure;
              });
            },
          ),
          fillColor: k4backgroundColor,
          filled: true,
          hintStyle: k4HintStyle,
          hintText: widget.hint,
          labelStyle: k4HintStyle,
          labelText: widget.label,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white60,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(16.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white60,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(16.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white60,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
      ),
    );
  }
}
