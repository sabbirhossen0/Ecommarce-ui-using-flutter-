import 'package:ecommarce/view/viewnavigate/layout/cart.dart';
import 'package:ecommarce/view/viewnavigate/layout/wishlist.dart';
import 'package:flutter/material.dart';

import 'package:ecommarce/view/viewnavigate/layout/about.dart';
import 'package:ecommarce/view/viewnavigate/layout/contact.dart';
import 'package:ecommarce/view/viewnavigate/layout/home.dart';
import 'package:ecommarce/view/viewnavigate/layout/searchview.dart';
import 'package:get/get.dart';
import 'package:ecommarce/viewmodel/searchp.dart';

class viewnavigator extends StatefulWidget {
  const viewnavigator({super.key});

  @override
  State<viewnavigator> createState() => _viewnavigatorState();
}

class _viewnavigatorState extends State<viewnavigator> {

   TextEditingController search=TextEditingController();

   final searchController searchcontrol = Get.put(searchController());

   bool pressed=false;

   var _selectedIndex = 0;

   // List of pages that correspond to each BottomNavigationBar item
   final List<Widget> _pages = [

     home(),
     contact(),
     about(),
     cart(),
     wishlist(),
     searchview()

   ];


   void _onItemTapped(int index) {
     setState(() {
       _selectedIndex = index;
     });
   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //appbar
      appBar: PreferredSize(preferredSize: Size.fromHeight(80), child: Container(
        // color: Colors.yellow,
        child:Column(
          children: [
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [

    Row(
      children: [
        Image.asset('assets/general/logo.png', height: 30,width: 30,),
        Text('Peart Store ',style: TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),),
      ],
    ),

Row(
  children: [
  InkWell(
    onTap: (){
      _onItemTapped(0);
    },
    child: Text('Home',style: TextStyle(
        fontWeight: FontWeight.bold,
        color: _selectedIndex ==0 ? Colors.green:Colors.black


    ),),
  ),
  SizedBox(width: 10,),



  // here use expantion tile

  InkWell(
    onTap: (){



     print('catagory pressed');
    },
    child: Container(
      child: Row(
        children: [
          Text('Catagory'),

          Icon(Icons.arrow_drop_down),


        ],
      ),
    ),
  ),
  
  
  SizedBox(width: 10,),
  InkWell(
      onTap: (){
        _onItemTapped(1);
      },
      child: Text('Contact',style: TextStyle(
          color: _selectedIndex ==1 ? Colors.green:Colors.black
      ),)),
  SizedBox(width: 10,),
  InkWell(
      onTap: (){
        _onItemTapped(2);
      },
      child: Text('About',style: TextStyle(

        color: _selectedIndex ==2 ? Colors.green:Colors.black

      ),)),
  SizedBox(width: 10,),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        color:Colors.white10,
        width: 200,
        child: TextField(

          controller: search,


          onChanged: (value) {
            // Update the GetX observable as user types
            searchcontrol.Search(value);
          },
          decoration: InputDecoration(
            labelText: 'Search',
              // hintText: 'search..',
              border: OutlineInputBorder(),

              suffixIcon: InkWell(
                  onTap: (){

                    searchcontrol.Search(search.text);

                    _onItemTapped(5);

                  },
                  child: Icon(Icons.search))
          ),
          // Call filter function on text change
        ),
      ),
    ),
],),
 Row(
   children: [

     InkWell(
         onTap: (){
           _onItemTapped(4);
         },
         child: Icon(Icons.bookmark_border, color: _selectedIndex ==4 ? Colors.green:Colors.black)),
     SizedBox(
       width: 10,
     ),
     // Icon(Icons.shopping_cart),


     InkWell(
       onTap: (){
         _onItemTapped(3);
       },
       child: Stack(

          children: [
            IconButton(
              icon: Icon(Icons.shopping_cart, size: 28,       ),
              onPressed: () {
                // Navigate to cart page
              },
            ),
            // Show badge only if cart is not empty
              Positioned(
                right: 6,
                top: 4,
                child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '3',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

          ],
       ),
     ),

     SizedBox(
       width: 20,
     ),Container(
       decoration: BoxDecoration(
           color: Colors.white,
           borderRadius:  BorderRadius.circular(50)
       ),
       child: Row(
         children: [
           Container(
             decoration: BoxDecoration(
                 color: Colors.green,
                 borderRadius:  BorderRadius.circular(50)
             ),
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: InkWell(
                 onTap: (){
Get.offNamed('reg');
                 },
                 child: Text('Signup',style: TextStyle(
                     fontWeight: FontWeight.bold
                 ),),
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: InkWell(
                 onTap: (){
                   Get.offNamed('log');
                 },
                 child: Text('Login',style: TextStyle(fontWeight: FontWeight.bold,),)),
           )

         ],
       ),
     )
   ],
 )

  ],
)
          ],
        ),
      )),

      body: SelectableRegion(
        focusNode: FocusNode(),
        selectionControls: MaterialTextSelectionControls(),
        child: SingleChildScrollView(
          child: Column(
          
            children: [
          
            //here calling function
           //portfolio see make a idea
          _pages[_selectedIndex],
          
          
              //bottom header
              Container(
                decoration: BoxDecoration(
                  color: Colors.black
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Exclusive',style: TextStyle(
                              color: Colors.white,
                               fontWeight: FontWeight.bold,
                              fontSize: 20
                            ),),
        
                            SizedBox(height:20,),
                            Text('Subscribe',style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold
                            ),),
                            Text('Get 10% off your first order',style: TextStyle(
                              color: Colors.white,
        
                            ),),
                            Container(
                              width: 200,
                              child: TextField(
        
                                decoration:  InputDecoration(
        
                                border:OutlineInputBorder(),
                                    hintText: 'Enter your text',
                                hintStyle: TextStyle(
                                  color: Colors.white60
                                ),
                                suffixIcon: Icon(Icons.send,color: Colors.white60,)
                                ),
                              ),
                            )
                          ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Support',style: TextStyle(
                              color: Colors.white,
                               fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),),
                            SizedBox(height:20,),
        
                            Text('320 Kawlar-Ashiyan City Rd\nDhaka 1230, Dhaka, Bangladesh',style: TextStyle(
                              color: Colors.white
                            ),),
                            Text('peartsoft@gmail.com',style: TextStyle(
                              color: Colors.white
                            ),),
                            Text('+8801842103007',style: TextStyle(color: Colors.white),),
        
        
        
        
        
                          ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Account',style: TextStyle(
                              color: Colors.white,
                               fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),),
                            SizedBox(height:20,),
                            Text('My account',style: TextStyle(
                              color: Colors.white
                            ),),
                            Text('Login/Register',style: TextStyle(
                             color: Colors.white
                            ),),
                            Text('Wishlist',style: TextStyle(
                             color: Colors.white
                            ),),
                            Text('Cart',style: TextStyle(
                             color: Colors.white
                            ),),
                            Text('Shop',style: TextStyle(
                             color: Colors.white
                            ),),
        
                          ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Quick Link',style: TextStyle(
                              color: Colors.white,
                               fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),),
                            SizedBox(height: 20,),
                            Text('Privacy policy',style: TextStyle(
                              color: Colors.white,
                            ),),
                            Text('Terms of use',style: TextStyle(
                              color: Colors.white
                            ),),
                            Text('Contact',style: TextStyle(
                              color: Colors.white
                            ),)
        
                          ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Download App',style: TextStyle(
                              color: Colors.white,
                               fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),),
                            SizedBox(height: 20,),
        
                            Text('Save 300tk with App New User Only',style: TextStyle(
                              color: Colors.white
                            ),),
                        SizedBox(height: 10,),
                            Row(
                              children: [
                                // Container(
                                //
                                //   height: 110,
                                //   width: 70,
                                //   child: Image.asset('assets/general/qrcode.png',fit: BoxFit.cover,),
                                // ),
                              SizedBox(width: 5,),
                                Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white,width: 2)
                                      ),
                                      height: 50,
                                      width: 100,
                                      child: Image.asset('assets/general/play.png',fit: BoxFit.contain,),
                                    ),
                                    SizedBox(height: 10,),
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Colors.white,width: 2)
                                      ),
                                      height: 50,
                                      width: 100,
                                      child: Image.asset('assets/general/play.png',fit: BoxFit.contain,),
                                    ),
                                  ],
                                )
        
                              ],
                            ),
                            SizedBox(height: 10,),
        
                            Row(
        
                              children: [
                                Icon(Icons.facebook,color: Colors.white,size: 40,),
                                SizedBox(width: 3,),
                                CircleAvatar(
                              radius: 19,
                            backgroundImage: AssetImage('assets/general/linkedin.jpg'),
                                ),
                                SizedBox(width: 3,),
        
                                CircleAvatar(
                                  radius: 19,
                                  backgroundImage: AssetImage('assets/general/x.jpg'),
                                ),
                                SizedBox(width: 3,),
                                CircleAvatar(
                                  radius: 19,
                                  backgroundImage: AssetImage('assets/general/thred.png',),
                                ),
        
        
        
                              ],
                            )
        
        
                          ],
                          ),
        
                        ],
                      ),
                      Text('© All Rights Reserved 2022 - 2024 | Peart Soft',style: TextStyle(
                          color: Colors.yellow
                      ),),
                    ],
                  ),
                ),
              )
          
          
          
            ],
          ),
        ),
      ),
    );
  }
}
