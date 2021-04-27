import 'package:food_deliveryui/models/food.dart';
import 'package:food_deliveryui/models/user.dart';
import 'package:food_deliveryui/models/orders.dart';
import 'package:food_deliveryui/models/restaurant.dart';
//food
final _pasta= Food(price: 60.0,imageUrl: 'assets/pasta with beef.jpg',name: 'Pasta');
final _nodels= Food(price: 100.0,imageUrl: 'assets/nodels.jpg',name: 'Nodeles');
final _cheesyGarlicBurgers= Food(price: 160.0,imageUrl: 'assets/Cheesy Garlic Burgers.jpg',name: 'Cheesy Burgers');
final _chickenCreamy= Food(price: 220.0,imageUrl: 'assets/Chicken Creamy.jpg',name: 'Chicken Creamy');
final _blackenedShrimp= Food(price: 190.0,imageUrl: 'assets/Blackened Shrimp.png',name: 'Blackened Shrimp');
final _cajunButterSteak= Food(price: 130.0,imageUrl: 'assets/Cajun Butter Steak.jpg',name: 'Butter Steak');
final _grilledThaiCoconut= Food(price: 120.0,imageUrl: 'assets/Grilled Thai Coconut.jpg',name: 'Grilled Coconut');
final _classicStuffedPeppers= Food(price: 150.0,imageUrl: 'assets/Classic Stuffed Peppers.jpg',name: 'Stuffed Peppers');
final _spaghettiSquash= Food(price: 220.0,imageUrl: 'assets/Spaghetti Squash.jpg',name: 'Spaghetti Squash');
//restaurant
final _restaurant0=Restaurant(
    name:'Marokana',
    rating: 4,
    imageUrl: 'assets/Marokana.jpg',
    address: '22 Street, New Work',
    menu: [_grilledThaiCoconut,_pasta,_cheesyGarlicBurgers,_blackenedShrimp,_chickenCreamy,_nodels,_spaghettiSquash,_cajunButterSteak, _blackenedShrimp,_classicStuffedPeppers]
);
final _restaurant1=Restaurant(
    name:'Daler',
    rating: 3,
    imageUrl: 'assets/Daler.png',
    address: '11 Street, New Work',
    menu:  [_grilledThaiCoconut,_pasta,_cheesyGarlicBurgers,_blackenedShrimp,_chickenCreamy,_nodels,_spaghettiSquash,_cajunButterSteak, _blackenedShrimp,_classicStuffedPeppers]
);
final _restaurant2=Restaurant(
    name:'Bert Pizza',
    rating: 1,
    imageUrl: 'assets/Bert Pizza.jpg',
    address: '55 Street, New Work',
    menu:  [_grilledThaiCoconut,_pasta,_cheesyGarlicBurgers,_blackenedShrimp,_chickenCreamy,_nodels,_spaghettiSquash,_cajunButterSteak, _blackenedShrimp,_classicStuffedPeppers]
);
final _restaurant3=Restaurant(
    name:'Mama Pho',
    rating: 2,
    imageUrl: 'assets/Mama Pho.jpg',
    address: '58 Street, New Work',
    menu:  [_grilledThaiCoconut,_pasta,_cheesyGarlicBurgers,_blackenedShrimp,_chickenCreamy,_nodels,_spaghettiSquash,_cajunButterSteak, _blackenedShrimp,_classicStuffedPeppers]
);
final List<Restaurant> restaurants=[
  _restaurant0,
  _restaurant1,
  _restaurant2,
  _restaurant3,
];
final currentUser=User(
  name: 'bassant',
  orders:[
    Order(
      date: 'june 14,2018',
      food: _pasta,
      restaurant: _restaurant1,
      quantity: 3,
    ),
    Order(
      date: 'july 18,2019',
      food: _chickenCreamy,
      restaurant: _restaurant0,
      quantity: 2,
    ),
    Order(
      date: 'may 14,2020',
      food: _cheesyGarlicBurgers,
      restaurant: _restaurant2,
      quantity: 1,
    ),
    Order(
      date: 'may 14,2020',
      food: _nodels,
      restaurant: _restaurant3,
      quantity: 4,
    ),
    Order(
      date: 'june 17,2021',
      food: _classicStuffedPeppers,
      restaurant: _restaurant3,
      quantity: 2,
    ),
    Order(
      date: 'july 9,2021',
      food: _spaghettiSquash,
      restaurant: _restaurant1,
      quantity: 1,
    ),
  ]
);

