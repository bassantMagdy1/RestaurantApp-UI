import 'package:flutter/material.dart';
class FlatButton2 extends StatelessWidget {
  final String text;
  FlatButton2({this.text});
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.symmetric(horizontal: 30),
      onPressed: (){},
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white
        ),
      ),
      color: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
