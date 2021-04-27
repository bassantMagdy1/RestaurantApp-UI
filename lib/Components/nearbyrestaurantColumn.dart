import 'package:flutter/material.dart';
import 'rating_stars.dart';
import 'package:food_deliveryui/constants.dart';
import 'package:food_deliveryui/models/restaurant.dart';
import 'package:food_deliveryui/Data/data.dart';
import 'package:food_deliveryui/Screens/restaurant_screen.dart';
class NearbyRestaurant extends StatefulWidget {
  @override
  _NearbyRestaurantState createState() => _NearbyRestaurantState();
}

class _NearbyRestaurantState extends State<NearbyRestaurant> {
  @override
  Widget build(BuildContext context) {
    List<Widget>restaurantList=[];
    restaurants.forEach((Restaurant restaurant) {
      restaurantList.add(
        GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => RestaurantScreen(restaurant: restaurant,)),
            );
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.grey[200],
                  width: 1,
                )
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Hero(
                    tag: restaurant.imageUrl,
                    child: Image(
                      width: 150,
                      height: 150,
                      image: AssetImage(restaurant.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(restaurant.name,
                        style: foodAndRestaurantNameStyle,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 4,),
                      RatingStars(restaurant.rating),
                      SizedBox(height: 4,),
                      Text(restaurant.address,
                        style: informationStyle,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 4,),
                      Text('0.2 miles away',
                        style: informationStyle,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],

            ),

          ),
        ),
      );
    });
    return Column(
      children: restaurantList,
    );
  }
}
