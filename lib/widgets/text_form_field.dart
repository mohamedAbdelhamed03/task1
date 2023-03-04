import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({this.hintText,this.label, this.icon, this.suffixIcon,this.keyboardType,required this.isPassword,this.onChange,this.suffixOnPressed,this.validator});
  String? hintText;
  String?label;
  Icon? icon;
  IconData? suffixIcon;
  TextInputType? keyboardType;
  bool isPassword=false;
  VoidCallback?suffixOnPressed;
  String? Function(String?)? validator;
  Function(String)? onChange;
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SingleChildScrollView(
        child: Container(
          color: Color(0xfff3f3f3),
          child: TextFormField(
            validator:validator!,
            onChanged: onChange,
            keyboardType:keyboardType ,
            obscureText: isPassword,
            style: TextStyle(
              color: Colors.purple,
              fontSize: 13,
            ),
            decoration: InputDecoration(
              hintText: hintText,
              labelText: label,
              prefixIcon: icon,
              suffixIcon: IconButton(icon: Icon(suffixIcon),onPressed:suffixOnPressed ,),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
