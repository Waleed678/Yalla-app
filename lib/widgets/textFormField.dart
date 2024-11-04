import 'package:flutter/material.dart';
import 'package:yalla_app/core/utils/colors.dart';
import 'package:yalla_app/core/utils/style.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextAlign textAlign;
  final Widget prefixIcon;
  final String? Function(String?) validator;


  const CustomTextField({
    Key? key,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
    required this.hintText,
    required this.obscureText,
    required this.prefixIcon,
    required this.validator,
    this.textAlign = TextAlign.left,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        style: TextStyles.TextFieldText,
        textAlign: TextAlign.start,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          hintStyle: TextStyles.TextField,
          filled: true,
          fillColor: TextFieldColor,
          //labelText: labelText,
          hintText: hintText,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon, // Use the provided prefixIcon
          border: OutlineInputBorder(
            borderSide: BorderSide(color: bordercolor,),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      validator: validator,
    );
  }
}


