import 'orders.dart';
class User{
  final String name;
  final List<Order> orders;
  final List<Order> cart;
  User({this.name,this.cart,this.orders});
}