import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final Widget suffixIcon;

  CustomTextFieldWidget({
    @required this.controller,
    this.hintText,
    this.suffixIcon,
  });

  @override
  _CustomTextFieldWidgetState createState() => _CustomTextFieldWidgetState();
}

class _CustomTextFieldWidgetState extends State<CustomTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget?.controller,
      maxLines: 1,
      decoration: InputDecoration(
        labelText: widget.hintText,
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 0),
        suffixIcon: widget?.suffixIcon,
      ),
    );
  }
}
