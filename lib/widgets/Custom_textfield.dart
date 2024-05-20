import 'package:flutter/material.dart';
class CustomTextfield extends StatelessWidget {
  String TextHint;
  TextInputType? inputType;
  // i send the data on the custom text field to it
  Function(String)?onchange;
  bool ? obstruct ;
 CustomTextfield({required this.TextHint,this.inputType,this.onchange,this.obstruct =false
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obstruct!,
      onChanged: onchange,
      // will be send shen use the widget
      keyboardType: inputType,

      // validator: (data) {
      //   if(data!.isEmpty){
      //     return("Error you should enter the value on it");
      //   }
        
      // },
      decoration: InputDecoration(
          hintText: TextHint,
          hintStyle: TextStyle(color: Colors.black),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.orange
            ),
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
           
          ))),
    );
  }
}