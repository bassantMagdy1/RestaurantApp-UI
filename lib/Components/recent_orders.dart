import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_deliveryui/constants.dart';
import 'package:food_deliveryui/Data/data.dart';
import 'package:food_deliveryui/models/orders.dart';
import 'package:food_deliveryui/Components/icon_button.dart';
class RecentOrders extends StatelessWidget {
  _buildRecentOrder(BuildContext context , Order order)
  {
    return Container(
      margin: EdgeInsets.all(10),
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 1,
          color: Colors.grey[200],
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image(
                    width: 100,
                    height: 100,
                    image: AssetImage(order.food.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAligngment.center,
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
                        Text(order.date,
                          style: informationStyle,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 10),
            width: 45,
            decoration: BoxDecoration(
              color: Colors.deepOrangeAccent,
              borderRadius: BorderRadius.circular(30),
            ),
            child: AddIconButton(),
          ),

        ],
      ),

    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Recent Orders',
            style: headlinesStyle,
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 7),
          height: 120 ,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context,int index){
              Order order=currentUser.orders[index];
              return _buildRecentOrder(context,order) ;
            },
            itemCount: currentUser.orders.length,

          ),


        )
      ],
    );
  }
}
