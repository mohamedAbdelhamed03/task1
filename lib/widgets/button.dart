import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({this.text, this.onPressed,this.backColor,this.textColor});
  String? text;
  VoidCallback? onPressed;
  Color? backColor;
  Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20)
      ),
      height: 63,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 30,),
      child: OutlinedButton(
        onPressed: onPressed,
        child: Text(text!,style: TextStyle(color:textColor,fontSize: 15,fontWeight: FontWeight.bold ),),
        style: OutlinedButton.styleFrom(
          backgroundColor:backColor,
          side: BorderSide(color: Color(0xff4b60fd),),
        )
      ),
    );
  }
}
