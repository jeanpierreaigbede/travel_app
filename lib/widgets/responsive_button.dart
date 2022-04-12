import 'package:flutter/material.dart';


class ResponsiveButton extends StatelessWidget {
  late double width;
  late bool isResponsive;
  ResponsiveButton({this.width=80,this.isResponsive=false}) ;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:const Color(0xFF5d398d)
      ),
      height:50,
      width:width,
      child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Image.asset("images/arrow.png",
           color: Colors.white,
           width: 30,
           height: 30,
         )
       ],
      ),
    );
  }
}
