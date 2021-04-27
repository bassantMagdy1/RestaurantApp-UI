import 'package:flutter/material.dart';
import 'package:food_deliveryui/Screens/homePage.dart';

void main() {
  runApp(FoodDelivery());
}
class FoodDelivery extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepOrangeAccent,
        scaffoldBackgroundColor: Colors.grey[50],
      ),
      home: HomePage(),
    );
  }
}
