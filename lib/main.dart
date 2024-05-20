import 'package:flutter/material.dart';
import 'package:store2/screens/HomePage.dart';
import 'package:store2/screens/updateproductpage.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        // transaltion
        HomePage.id : (context) => HomePage(),
        UpdateProductPage.id:(context) => UpdateProductPage(),
   
      } ,
      // code of transfer
      initialRoute: HomePage.id,

    );

}
}
