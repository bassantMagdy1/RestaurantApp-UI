import 'package:food_deliveryui/models/food.dart';
class Restaurant
{
  final String name;
  final int rating;
  final String imageUrl;
  final String address;
  final List<Food>menu;
  Restaurant({this.name,this.imageUrl,this.address,this.menu,this.rating});
}


