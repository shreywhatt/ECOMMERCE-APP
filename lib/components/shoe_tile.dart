import 'package:flutter/material.dart';
import '../models/shoe.dart';
class  ShoeTile extends StatelessWidget {
  Shoe shoe;

  void Function()? onTap;
  ShoeTile ({super.key,
    required this.shoe,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25,),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //shoe pic
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(shoe.imagePath,),),

          //description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              shoe.description,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),

          //price+details
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    //shoe name
                    Text(shoe.name,
                      style: TextStyle(
                    color: Colors.blue.shade900,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),),
                    SizedBox(height: 5 ,),

                    //price
                    Text(
                      '\$${shoe.price}',
                      style: const TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),),],),
                // plus button

              ],
            ),

          ),

          // button to add to cart
           GestureDetector(
             onTap: onTap,
             child: Container(
                margin: EdgeInsets.only(bottom: 1, left: 255),
                padding: EdgeInsets.all(20),
                decoration:  const BoxDecoration(color: Colors.black,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12) )),
                child: Icon(Icons.add, color: Colors.white,)),
           ),
        ],
      ),
    ) ;
  }
}
