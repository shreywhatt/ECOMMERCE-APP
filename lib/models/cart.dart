import 'package:ecomm/models/shoe.dart';
import 'package:flutter/cupertino.dart';

class Cart extends ChangeNotifier{
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom Freak',
      price: '236',
      imagePath: 'lib/images/black.jpg',
      description: 'Multi-Ground Low-Top Football Boot',
    ),

    Shoe(
      name: 'Home Alabama',
      price: '366',
      imagePath: 'lib/images/blue.jpg',
      description: 'Skate Shoes',
    ),

    Shoe(
      name: 'Dunk Low Pro',
      price: '480',
      imagePath: 'lib/images/brown.jpg',
      description: 'Nike Dunk Low Next Nature',
    ),

    Shoe(
      name: 'Unicorn 100M',
      price: '236',
      imagePath: 'lib/images/unicorn.jpg',
      description: 'Multi-Ground Low-Top Football Boot',
    ),
  ];

  //list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList(){
    return shoeShop;
  }
  //add items to cart
  void addItemToCart (Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  //remove items from the cart
  void removeItemFromCart (Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
  }
