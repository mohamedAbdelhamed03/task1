import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class ListContainer extends StatelessWidget {
  ListContainer({this.index, this.onPressed});
  int? index;
  VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 15),
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      decoration: BoxDecoration(
          color: Color(0xffffad3b), borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Item ${index}',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          IconButton(
            onPressed: onPressed,
            icon: Icon(Icons.delete),
            color: Colors.white.withOpacity(0.7),
            iconSize: 25,
          )
        ],
      ),
    );
  }
}
