import 'package:flutter/material.dart';
import 'package:food_deliveryui/Data/data.dart';
import 'package:food_deliveryui/models/orders.dart';
import 'package:food_deliveryui/constants.dart';
class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  _buildCart(Order order)
  {
    return Container(
      padding: EdgeInsets.all(20),
      height: 170,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image(
                    width: 120,
                    height: 120,
                    image: AssetImage(order.food.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(order.food.name,
                          style: foodAndRestaurantNameStyle,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 4,),
                        Text(order.restaurant.name,
                            style:informationStyle
                        ),
                        SizedBox(height: 4,),
                        Container(
                          width: 100,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              width: .8,
                              color: Colors.black54,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '+',
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                order.quantity.toString(),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                '-',
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            order.food.price.toString(),
          ),
        ],
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Cart(${currentUser.orders.length})',
            style: TextStyle(
              fontSize: 22,
              fontFamily: 'Lobster',
            ),
          ),
        ),
      ),
      body: ListView.separated(
        itemCount: currentUser.orders.length,
        itemBuilder:(BuildContext context, int index){
          Order order=currentUser.orders[index];
          return _buildCart(order);
        },
        separatorBuilder: (BuildContext context, int index){
          return Divider(
            height: 1,
            color: Colors.grey,
          );
        },
      ),
    );
  }
}
