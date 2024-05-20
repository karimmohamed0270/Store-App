import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  String text;
  Color butcolor;
  Function()?ontap;
  Custombutton({
    required this.text,
    required this.butcolor,
    required this.ontap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: butcolor,
        ),
        width: double.infinity,
        height: 50,
        child: Center(child: Text(text)),
    
      ),
    );
  }
}
