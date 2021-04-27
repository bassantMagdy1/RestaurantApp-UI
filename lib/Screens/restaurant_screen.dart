import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_deliveryui/models/food.dart';
import 'package:food_deliveryui/models/restaurant.dart';
import 'package:food_deliveryui/Components/rating_stars.dart';
import 'package:food_deliveryui/Components/flatbutton.dart';
import 'package:food_deliveryui/Components/icon_button.dart';
class RestaurantScreen extends StatefulWidget {
  final Restaurant restaurant;
  RestaurantScreen({this.restaurant});
  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  _buildMenuItems(Food menuItem)
  {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 175,
            width: 175,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(menuItem.imageUrl),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Container(
            width: 175,
            height: 175,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.black.withOpacity(0.3),
                  Colors.black87.withOpacity(0.3),
                  Colors.black54.withOpacity(0.3),
                  Colors.black38.withOpacity(0.3),
                ],
                stops: [.1,.4,.6,.9],
              ),
            ),
          ),
          Positioned(
            bottom: 65,
            child: Column(
              children: [
                Text(
                  menuItem.name,
                  style: TextStyle(
                    fontFamily: 'Lobster',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1,
                  ),
                ),
                Text(
                  menuItem.price.toString(),
                  style: TextStyle(
                    fontFamily: 'Lobster',
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
                borderRadius: BorderRadius.circular(30),
              ),
              child: AddIconButton(),
            ),

          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Hero(
                tag: widget.restaurant.imageUrl,
                child: Image(
                  height: 220,
                  width:MediaQuery.of(context).size.width ,
                  image: AssetImage(widget.restaurant.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      color: Colors.white,
                      iconSize: 30,
                      icon: Icon(
                        Icons.arrow_back_ios,
                      ),
                      onPressed: (){
                        Navigator.pop(context);
                      },
                    ),
                    IconButton(
                      color: Theme.of(context).primaryColor,
                      iconSize: 30,
                      icon: Icon(
                        Icons.favorite,
                      ),
                      onPressed: (){
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.restaurant.name,
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Lobster',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text('0.2 miles away',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                RatingStars(widget.restaurant.rating),
                SizedBox(
                  height: 8,
                ),
                Text(widget.restaurant.address,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FlatButton2(text:'Reviews'),
              FlatButton2(text:'Contact'),
            ],
          ),
          SizedBox(height: 10,),
          Center(
            child: Text(
              'Menu',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Lobster',
                fontSize: 22,
                letterSpacing: 1.2,
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.all(15),
              crossAxisCount: 2,
              children:
                List.generate(widget.restaurant.menu.length, (index) {
                  Food food=widget.restaurant.menu[index];
                  return _buildMenuItems(food);
                }),
            ),
          ),
        ],
      ),
    );
  }
}

