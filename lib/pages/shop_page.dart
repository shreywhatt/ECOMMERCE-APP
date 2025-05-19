import 'package:ecomm/models/cart.dart';
import 'package:ecomm/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/shoe_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  //add shoe to cart
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    //alert the user
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Successfully added to the cart!',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),),
          content: Text('Check your cart :)',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),),
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) =>
          Column(
            children: [
              //search bar
              Container(
                padding: EdgeInsets.all(12.0),
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('SEARCH ', style: TextStyle(color: Colors.black,
                        fontWeight: FontWeight.bold),),
                    Icon(Icons.search, color: Colors.black,),
                  ],
                ),
              ),

              //message
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Text('Everyone flies, some fly longer than others',
                  style: TextStyle(color: Colors.white),),
              ),

              //hot picks
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 25.0, vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('Hot Picks 🔥',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    Text('See All',
                      style: TextStyle(fontWeight: FontWeight.bold,
                        color: Colors.blue,),)
                  ],
                ),
              ),
              const SizedBox(height: 10.0,),

              // list of shoes for sale
              Expanded(
                child: ListView.builder(
                  itemCount: value
                      .getShoeList()
                      .length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    // create a shoe
                    Shoe shoe = value.getShoeList()[index];
                    // Shoe shoe = Shoe(
                    // name: 'AIR JORDAN',
                    // price: '240',
                    // imagePath: 'lib/images/black.jpg',
                    // description: 'Limited Edition');

                    //return shoe
                    return ShoeTile(
                      shoe: shoe,
                      onTap: () => addShoeToCart(shoe),

                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 25, right: 25, left: 25, bottom: 25),
                child: Divider(
                  color: Colors.black,

                ),
              )
            ],
          ),
    );
  }

}
