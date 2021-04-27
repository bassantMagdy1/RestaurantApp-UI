import 'package:flutter/material.dart';
class RatingStars extends StatelessWidget {
  final int ratting;
  RatingStars(this.ratting);
  @override
  Widget build(BuildContext context) {
    String stars='';
    for(int i=0;i<ratting;i++)
      {
        stars+='⭐ ';
      }
    return Text(stars,
      style: TextStyle(
        fontSize: 16,
      ),
    );
  }
}
