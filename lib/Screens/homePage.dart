import 'package:food_deliveryui/Data/data.dart';
import 'package:food_deliveryui/constants.dart';
import 'package:food_deliveryui/Components/nearbyrestaurantColumn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_deliveryui/Components/recent_orders.dart';
import 'package:flutter/rendering.dart';
import 'package:food_deliveryui/models/user.dart';
import 'cart_screen.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.account_circle),
          iconSize: 30,
          color: Colors.white,
          onPressed:() {},
        ),
        actions: [
          FlatButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartScreen()),
              );

            }
            ,
            child: Text('Cart(${currentUser.orders.length})',
              style: TextStyle(
                fontFamily: 'Lobster',
                color: Colors.white,
                fontSize: 22,
              ),
            ),
          )
        ],
        elevation: 5,
        title: Center(
          child: Text('Food Delivery',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Lobster',
              fontSize: 27,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            //Search Bar
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(width: .8),
                  ),
                  enabledBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(width: .8,color: Theme.of(context).primaryColor),
                  ) ,
                  hintText: 'Search Food or Restaurant',
                  hintStyle: TextStyle(color: Colors.grey[400]),

                  prefixIcon: Icon(
                    Icons.search,
                    size: 30,
                  ),
                  suffixIcon: IconButton(
                    onPressed: (){},
                    icon:Icon(
                      Icons.clear,
                      size: 30,
                    ),
                  )
              ),
            ),
          ),
          RecentOrders(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text('Nearby Restaurants',
                  style: headlinesStyle,
                ),
              ),
              Column(
                children: [
                  NearbyRestaurant(),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
