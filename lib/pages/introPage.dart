import 'package:ecomm/pages/HomePage.dart';
import 'package:flutter/material.dart';

class introPage extends StatelessWidget {
  const introPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'lib/images/5.png',
                    height: 340,
                  ),
                ),

                const SizedBox(height: 28 ,
                ),
                //title
                Text(
                  'Just Do it (ffs)',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,

                  ),
                  textAlign: TextAlign.center,

                ),

                const SizedBox(height: 24 ),

                //subtitle
                const Text(
                  'Sneakers hand picked by Abhishrek and booked on the Fort of Raireshwar - Limited Edition' ,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),


                //start now button
                const SizedBox(height: 44,),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)=> Homepage(),
                      ),
                  ),
                  child: Container(

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),

                    ) ,
                    padding: EdgeInsets.all(25.0),

                    child: const Center(
                      child: Text(
                        'SHOP NOW!',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                )
              ]
          ),
        ),
      ),
    );
  }
}
