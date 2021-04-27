import 'package:food_deliveryui/models/food.dart';
import 'package:food_deliveryui/models/restaurant.dart';

class Order{
  final Restaurant restaurant;
  final Food food;
  final String date;
  final int quantity;
  Order({this.restaurant,this.date,this.food,this.quantity});
}