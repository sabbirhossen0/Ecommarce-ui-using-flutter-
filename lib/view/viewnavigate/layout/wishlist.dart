import 'package:flutter/material.dart';

class wishlist extends StatefulWidget {
  const wishlist({super.key});

  @override
  State<wishlist> createState() => _wishlistState();
}

class _wishlistState extends State<wishlist> {
  int wishlist=4;
  
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 100.0,right: 100),
      child: Column(
        children: [
         Column(
           children: [
             SizedBox(height: 100,),
             Row(
               children: [

                 Text('Wishlist'+'('+'${wishlist}'+')'),
                 Spacer(),
                 Container(
                   decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                     border: Border.all(color: Colors.black)
                   ),

                   child:Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: Text('Move all to bag'),
                   ),
                 )

               ],

             ),
             Container(
               height: 250,
               color: Colors.white60,// Set a fixed height for the horizontal list
               child: ListView.builder(
                 // controller: _scrollController,
                 scrollDirection: Axis.horizontal, // Set scroll direction to horizontal
                 itemCount: 4, // Number of items to display
                 itemBuilder: (context, index) {
                   return Column(
                       children: [
                         Stack(
                           children: [
                             Positioned(
                               child: Padding(
                                 padding: const EdgeInsets.only(top: 10.0),
                                 child: Container(
                                   width: MediaQuery.of(context).size.width/5.5, // Set a fixed width for each item
                                   margin: EdgeInsets.symmetric(horizontal: 8.0,vertical: 8),
                                   decoration: BoxDecoration(
                                     color: Colors.white60,
                                     borderRadius: BorderRadius.circular(10),
                                   ),
                                   child: Center(child: Image.asset('assets/general/p1.png',height: 100,)),
                                 ),
                               ),
                             ),
                             Positioned(
                                 top:5,
                                 right:20,
                                 child: Icon(Icons.delete)),
                             // Positioned(top:30, right:20, child: Icon(Icons.bookmark_border)),
                             Positioned(top:5, left:20, child: Text('-40%',style: TextStyle(
                                 color: Colors.green
                             ),)),
                           ],
                         ),

                         Container(
                           decoration: BoxDecoration(
                             color: Colors.black,
                           ),
                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Row(
                               children: [
                                 Icon(Icons.shopping_cart_rounded,color: Colors.white,),
                                 Text('Add to cart',style: TextStyle(
                                   color: Colors.white
                                 ),)
                               ],
                             ),
                           ),
                         ),


                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text('HAVIT HV-G92 Gamepad'),
                             Row(
                               children: [
                                 Text('\$'+'120',style: TextStyle(
                                     color: Colors.red
                                 ),),
                                 SizedBox(width: 20,),
                                 Text('\$'+'160'),
                               ],
                             ),


                           ],
                         ),




                       ]


                   );
                 },

               ),
             ),


           ],
         )
          
          
          
          
        ],
      ),
    );
  }
}
