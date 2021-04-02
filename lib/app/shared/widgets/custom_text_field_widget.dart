import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatefulWidget {
  final String hintText;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final Widget suffixIcon;
  final void Function(String) onChanged;

  final void Function(String) onValidator;

  CustomTextFieldWidget({
    this.hintText,
    this.keyboardType,
    @required this.controller,
    this.suffixIcon,
    this.onChanged,
    this.onValidator,
  });

  @override
  _CustomTextFieldWidgetState createState() => _CustomTextFieldWidgetState();
}

class _CustomTextFieldWidgetState extends State<CustomTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget?.keyboardType,
      controller: widget?.controller,
      onChanged: widget?.onChanged,
      validator: widget.onValidator,
      maxLines: 1,
      decoration: InputDecoration(
        labelText: widget.hintText,
        contentPadding: EdgeInsets.only(
          left: 0,
          right: 0,
          top: 15,
          bottom: 15,
        ),
        suffixIcon: widget?.suffixIcon,
      ),
    );
  }
}
