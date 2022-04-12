import 'package:flutter/material.dart';

class LargeText extends StatelessWidget {
  LargeText({
   required this.text,
     this.color=Colors.black,
   this.size=30
});
double size;
final String text;
final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(text,
    style: TextStyle(
      color: color,
      fontSize: size,
      fontWeight: FontWeight.bold
    ),);
  }
}
