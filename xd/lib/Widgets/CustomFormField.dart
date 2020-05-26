import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final String hintText;
  final bool hidePassword;
  CustomFormField({this.hintText, this.hidePassword});
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        // filled: false,
        focusColor: Colors.black38,
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black26),
        ),
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black26,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
      ),
      obscureText: hidePassword,
    );
  }
}
