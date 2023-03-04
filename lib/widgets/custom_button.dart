import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({this.backColor,this.text,this.textColor,this.onTap}) ;
  Color? backColor;
  Color?textColor;
  String? text;
  VoidCallback?onTap;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          height: 63,
          decoration:
              BoxDecoration(
                color: backColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.purple,)
              ),
              child: Center(child: Text(text!,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: textColor),)),
        ),
      ),
    );
  }
}
