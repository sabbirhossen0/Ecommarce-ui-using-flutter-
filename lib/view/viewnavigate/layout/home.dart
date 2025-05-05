
import 'dart:async';

import 'package:flutter/material.dart';


import 'package:get/get.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {



  final ScrollController _scrollController = ScrollController();
  final ScrollController _scrollControllerc = ScrollController();
  final ScrollController _scrollControllerop = ScrollController();
  double _scrollPosition = 0.0; // Track the current scroll position
  double _scroolcata = 0.0; // Track the current scroll position
  double _scroolop = 0.0; // Track the current scroll position

  void scrollToNext() {

      setState(() {
        // Calculate the new scroll position
        _scrollPosition += 240.0;
        // Scroll by 120 pixels (adjust as needed)
        _scrollController.animateTo(
          _scrollPosition,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      });






  }

  void scrollToPrevious() {
  setState(() {
    // Calculate the new scroll position
    _scrollPosition -= 240.0; // Scroll back by 120 pixels
    if (_scrollPosition < 0.0) _scrollPosition = 0.0; // Prevent negative values
    _scrollController.animateTo(
      _scrollPosition,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  });


  }

  void scrollToNextc() {

    setState(() {
      // Calculate the new scroll position
      _scroolcata += 240.0;
      // Scroll by 120 pixels (adjust as needed)
      _scrollControllerc.animateTo(
        _scroolcata,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  void scrollToPreviousc() {
    setState(() {
      // Calculate the new scroll position
      _scroolcata -= 240.0; // Scroll back by 120 pixels
      if (_scroolcata < 0.0) _scroolcata = 0.0; // Prevent negative values
      _scrollControllerc.animateTo(
        _scroolcata,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  void scrollToNextop() {

    setState(() {
      // Calculate the new scroll position
      _scroolop += 240.0;
      // Scroll by 120 pixels (adjust as needed)
      _scrollControllerop.animateTo(
        _scroolop,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });






  }

  void scrollToPreviousop() {
    setState(() {
      // Calculate the new scroll position
      _scroolop -= 240.0; // Scroll back by 120 pixels
      if (_scroolop < 0.0) _scroolop = 0.0; // Prevent negative values
      _scrollControllerop.animateTo(
        _scroolop,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });


  }










  final List<Map<String, dynamic>> categories = [
    {"name": "Mobiles", "count": "( product)"},
    {"name": "Electronics", "count": "( product)"},
    {"name": "Vehicles", "count": "(34,074)"},
    {"name": "Property", "count": "(18,316)"},
    {"name": "Home & Living", "count": "(17,828)"},
    {"name": "Pets & Animals", "count": "(14,374)"},
    {"name": "Men's Fashion & Grooming", "count": "(8,068)"},
    {"name": "Women's Fashion & Beauty", "count": "(7,739)"},
    {"name": "Hobbies, Sports & Kids", "count": "(7,249)"},
    {"name": "Business & Industry", "count": "(3,278)"},
    {"name": "Essentials", "count": "(2,656)"},
    {"name": "Education", "count": "(2,531)"},
  ];



  //for image slider


  final List<String> images = [
    'https://images.pexels.com/photos/531880/pexels-photo-531880.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/956999/milky-way-starry-sky-night-sky-star-956999.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/743986/pexels-photo-743986.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/952670/pexels-photo-952670.jpeg?auto=compress&cs=tinysrgb&w=600',
  ];

  PageController _pageController = PageController();
  int currentIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    startAutoSlide();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  void startAutoSlide() {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (currentIndex < images.length - 1) {
        currentIndex++;
      } else {
        currentIndex = 0;
      }
      _pageController.animateToPage(
        currentIndex,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }








  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
         children: [
      Container(

        child: Column(
      children: [

        //for catagory and image slider section
       Row(
         children: [
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Align(
                 alignment:Alignment.topRight,
                 child: Text('Catagory',style: TextStyle(
                   color: Colors.black,
                   fontWeight: FontWeight.bold,
                   fontSize: 30
                 ),),
               ),
               Container(
                 width: MediaQuery.of(context).size.width/6,
                 height: MediaQuery.of(context).size.height/1.8,
                 child: ListView.builder(
                   itemCount: categories.length,
                   itemBuilder: (context, index) {
                     final category = categories[index];
                     return ExpansionTile(
                       title: Text(category["name"]),
                       // subtitle: Text(category["count"]),
                       children: [
                         Container(
                           padding: EdgeInsets.all(16.0),
                           alignment: Alignment.centerLeft,
                           child: Text(
                             "Additional information for ${category["name"]}",
                             style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                           ),
                         ),
                       ],
                     );
                   },
                 ),
               ),
             ],
           ),
           Container(
             width: MediaQuery.of(context).size.width/1.3,
             height: MediaQuery.of(context).size.height/1.8,
             child: Column(
               children: [
                 Expanded(
                   child: PageView.builder(
                     controller: _pageController,
                     itemCount: images.length,
                     onPageChanged: (index) {
                       setState(() {
                         currentIndex = index;
                       });
                     },
                     itemBuilder: (context, index) {
                       return Container(
                         margin: EdgeInsets.all(8.0),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(16.0),
                           image: DecorationImage(
                             image: NetworkImage(images[index]),
                             fit: BoxFit.cover,
                           ),
                         ),
                       );
                     },
                   ),
                 ),
                 SizedBox(height: 16.0),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: images.map((url) {
                     int index = images.indexOf(url);
                     return Container(
                       width: 8.0,
                       height: 8.0,
                       margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                       decoration: BoxDecoration(
                         shape: BoxShape.circle,
                         color: currentIndex == index ? Colors.blue : Colors.grey,
                       ),
                     );
                   }).toList(),
                 ),
               ],
             ),
           )


         ],
       ),

SizedBox(height: 40,),

//for flash sell
      Padding(
        padding: const EdgeInsets.only(right: 37.0),
        child: Align(
          alignment: Alignment.topRight,
          child: Container(
            width: MediaQuery.of(context).size.width/1.3,

            color: Colors.white60,
            child: Column(

              children: [
                Row(

                    children: [
                      Container(
                        height: 20,
                        width: 10,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius:  BorderRadius.circular(10),

                        ),
                      ),
                      SizedBox(width: 3,),
                      Text('Todays',style: TextStyle(
                        color: Colors.red,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                      ),

                    ],
                 ),
                SizedBox(height: 18,),
                Row(
                  children: [
Text('Flash Sell',style: TextStyle(
  fontWeight: FontWeight.bold,
   fontSize: 30,

),),
                    Row(
                      children: [
                        SizedBox(width: 40,),
                        Column(
                          children: [
                            Text('Days',style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold
                            ),),
                            Text('03',style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                        SizedBox(width: 5,),
                        Text(':',style: TextStyle(
                          color: Colors.amber,
                          fontWeight: FontWeight.bold,
                          fontSize: 30
                        ),),
                        SizedBox(width: 5,),


                        SizedBox(width: 20,),
                        Column(
                          children: [
                            Text('Hour',style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold
                            ),),
                            Text('06',style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                        SizedBox(width: 5,),
                        Text(':',style: TextStyle(
                            color: Colors.amber,
                            fontWeight: FontWeight.bold,
                            fontSize: 30
                        ),),
                        SizedBox(width: 5,),

                        SizedBox(width: 20,),
                        Column(
                          children: [
                            Text('Minite',style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold
                            ),),
                            Text('25',style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                        SizedBox(width: 5,),
                        Text(':',style: TextStyle(
                            color: Colors.amber,
                            fontWeight: FontWeight.bold,
                            fontSize: 30
                        ),),
                        SizedBox(width: 5,),


                        SizedBox(width: 20,),
                        Column(
                          children: [
                            Text('Second',style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold
                            ),),
                            Text('03',style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                        SizedBox(width: 5,),


                      ],
                    ),


                    Spacer(),
                    Row(
                      children: [
                        InkWell(
                            onTap: (){
                              scrollToPrevious();

                            },
                            child: Icon(Icons.arrow_back,color: Colors.black54,)),
                        SizedBox(width: 5,),
                        InkWell(
                            onTap: (){
                              scrollToNext();
                            },
                            child: Icon(Icons.arrow_forward,color: Colors.black54,)),
                      ],
                    )
                  ],
                ),

          SizedBox(height: 40,),

                Container(
                  height: 200,
                  color: Colors.white60,// Set a fixed height for the horizontal list
                  child: ListView.builder(
                    controller: _scrollController,
                    scrollDirection: Axis.horizontal, // Set scroll direction to horizontal
                    itemCount: 10, // Number of items to display
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
                                child: Icon(Icons.shopping_cart)),
                            Positioned(top:30, right:20, child: Icon(Icons.bookmark_border)),
                            Positioned(top:5, left:20, child: Text('-40%',style: TextStyle(
                              color: Colors.green
                            ),)),
                        
                        

                        
                          ],
                        
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

                             Row(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [

                                 Icon(Icons.star, size: 20,color: Colors.green,),
                                 Icon(Icons.star, size: 20,color: Colors.green,),
                                 Icon(Icons.star, size: 20,color: Colors.green,),
                                 Icon(Icons.star, size: 20,color: Colors.green,),
                                 Text('(801)')
                               ],
                             )
                           ],
                         ),



                         
                       ]


                      );
                    },

                  ),
                ),





























//for view all product button
Padding(
  padding: const EdgeInsets.only(bottom: 10.0),
  child: Container(
    height: 50,
    width: 200,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
        color:Colors.red


    ),
    child: Center(
      child: Text('View all Product',style: TextStyle(
        color: Colors.white
      ),),
    ),
  ),
)

              ],
            ),
          ),
        ),
      ),
SizedBox(height: 100,),



      // for  catagory search
      Padding(
        padding: const EdgeInsets.only(right: 37.0),
        child: Align(
          alignment: Alignment.topRight,
          child: Container(
            width: MediaQuery.of(context).size.width/1.3,

            color: Colors.white60,
            child: Column(

              children: [
                Row(

                    children: [
                      Container(
                        height: 20,
                        width: 10,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius:  BorderRadius.circular(10),

                        ),
                      ),
                      SizedBox(width: 3,),
                      Text('Catagory',style: TextStyle(
                        color: Colors.red,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                      ),

                    ],
                 ),
                SizedBox(height: 18,),
                Row(
                  children: [
Text('Browse By Category',style: TextStyle(
  fontWeight: FontWeight.bold,
   fontSize: 30,

),),



                    Spacer(),
                    Row(
                      children: [
                        InkWell(
                            onTap: (){
                              scrollToPreviousc();

                            },
                            child: Icon(Icons.arrow_back,color: Colors.black54,)),
                        SizedBox(width: 5,),
                        InkWell(
                            onTap: (){
                              scrollToNextc();
                            },
                            child: Icon(Icons.arrow_forward,color: Colors.black54,)),
                      ],
                    )
                  ],
                ),

          SizedBox(height: 40,),

                Container(
                  height: 150,

                  color: Colors.white60,// Set a fixed height for the horizontal list
                  child: ListView.builder(
                    controller: _scrollControllerc,
                    scrollDirection: Axis.horizontal, // Set scroll direction to horizontal
                    itemCount: 10, // Number of items to display
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                        width: 150,
                          height: 140,
                          decoration: BoxDecoration(
                            border:  Border.all( color: Colors.black,width: 2)
                          ),

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              Icon(Icons.phone_android,size: 50,),
                              Text('Phone',style: TextStyle(
                                color: Colors.black54
                              ),)

                            ],
                          ),



                        ),
                      );
                    },

                  ),
                ),


              ],
            ),
          ),
        ),
      ),
        SizedBox(height: 100,),

        //for best sell product
        Padding(
          padding: const EdgeInsets.only(right: 37.0),
          child: Align(
            alignment: Alignment.topRight,
            child: Container(
              width: MediaQuery.of(context).size.width/1.3,

              color: Colors.white60,
              child: Column(

                children: [
                  Row(

                    children: [
                      Container(
                        height: 20,
                        width: 10,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius:  BorderRadius.circular(10),

                        ),
                      ),
                      SizedBox(width: 3,),
                      Text('This Month',style: TextStyle(
                        color: Colors.red,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                      ),

                    ],
                  ),
                  SizedBox(height: 18,),
                  Row(
                    children: [
                      Text('Best Selling Products',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,

                      ),),



                      Spacer(),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:Colors.red


                          ),
                          child: Center(
                            child: Text('View all ',style: TextStyle(
                                color: Colors.white
                            ),),
                          ),
                        ),
                      )


                    ],
                  ),

                  SizedBox(height: 40,),

                  Container(
                    height: 200,
                    color: Colors.white60,// Set a fixed height for the horizontal list
                    child: ListView.builder(
                      // controller: _scrollController,
                      scrollDirection: Axis.horizontal, // Set scroll direction to horizontal
                      itemCount: 10, // Number of items to display
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
                                      child: Icon(Icons.bookmark_border)),
                                  Positioned(top:30, right:20, child: Icon(Icons.remove_red_eye)),



                                ],

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

                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [

                                      Icon(Icons.star, size: 20,color: Colors.green,),
                                      Icon(Icons.star, size: 20,color: Colors.green,),
                                      Icon(Icons.star, size: 20,color: Colors.green,),
                                      Icon(Icons.star, size: 20,color: Colors.green,),
                                      Text('(801)')
                                    ],
                                  )
                                ],
                              ),




                            ]


                        );
                      },

                    ),
                  ),



                ],
              ),
            ),
          ),
        ),


SizedBox(
   height: 100,
),



//for  marketing banner 
      
      Align(
        alignment: Alignment.topRight,
        child: Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Container(
            width: MediaQuery.of(context).size.width/1.3,
            child: Image.asset('assets/general/banner.png'),
          ),
        ),
      ),

SizedBox(height: 100,),

//for Explore Our Products
        Padding(
          padding: const EdgeInsets.only(right: 37.0),
          child: Align(
            alignment: Alignment.topRight,
            child: Container(
              width: MediaQuery.of(context).size.width/1.3,

              color: Colors.white60,
              child: Column(

                children: [
                  Row(

                    children: [
                      Container(
                        height: 20,
                        width: 10,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius:  BorderRadius.circular(10),

                        ),
                      ),
                      SizedBox(width: 3,),
                      Text('Our Product',style: TextStyle(
                        color: Colors.red,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                      ),

                    ],
                  ),
                  SizedBox(height: 18,),
                  Row(
                    children: [
                      Text('Explore Our Products',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,

                      ),),
                      Spacer(),
                      Row(
                        children: [
                          InkWell(
                              onTap: (){
                                scrollToPreviousop();

                              },
                              child: Icon(Icons.arrow_back,color: Colors.black54,)),
                          SizedBox(width: 5,),
                          InkWell(
                              onTap: (){
                                scrollToNextop();
                              },
                              child: Icon(Icons.arrow_forward,color: Colors.black54,)),
                        ],
                      )
                    ],
                  ),

                  SizedBox(height: 40,),

                  Container(
                    height: 200,
                    color: Colors.white60,// Set a fixed height for the horizontal list
                    child: ListView.builder(
                      controller: _scrollControllerop,
                      scrollDirection: Axis.horizontal, // Set scroll direction to horizontal
                      itemCount: 10, // Number of items to display
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
                                      child: Icon(Icons.shopping_cart)),
                                  Positioned(top:30, right:20, child: Icon(Icons.bookmark_border)),
                                  Positioned(top:5, left:20, child: Text('-40%',style: TextStyle(
                                      color: Colors.green
                                  ),)),




                                ],

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

                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [

                                      Icon(Icons.star, size: 20,color: Colors.green,),
                                      Icon(Icons.star, size: 20,color: Colors.green,),
                                      Icon(Icons.star, size: 20,color: Colors.green,),
                                      Icon(Icons.star, size: 20,color: Colors.green,),
                                      Text('(801)')
                                    ],
                                  )
                                ],
                              ),




                            ]


                        );
                      },

                    ),
                  ),
//for view all product button
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:Colors.red


                      ),
                      child: Center(
                        child: Text('View all Product',style: TextStyle(
                            color: Colors.white
                        ),),
                      ),
                    ),
                  )

                ],
              ),
            ),
          ),
        ),

SizedBox(height: 100,),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Align(
            alignment: Alignment.topRight,
            child: Container(
              width: MediaQuery.of(context).size.width/1.3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: policy(),
              ),
            ),
          ),
        ),
        SizedBox(height: 100,)






      ],
        ),
      )
         ],
      ),
    );





  }







  //customar service and policy box
  List<Widget>policy() {
    return [
      policycard(imagepath: 'assets/about/freedel.png', title: 'FREE AND FAST DELIVERY', subtitle: 'Free delivery for all orders over 1400 tk'),
      SizedBox(width: 15, height: 15), // Adds space between items
      policycard(imagepath: 'assets/about/privacy.png', title: '24/7 CUSTOMER SERVICE', subtitle: 'Friendly 24/7 customer support'),
      SizedBox(width: 15, height: 15), // Adds space between items
      policycard(imagepath: 'assets/about/Services.png', title: 'MONEY BACK GUARANTEE', subtitle: 'We reurn money within 30 days'),
      SizedBox(width: 15, height: 15), // Adds space between items
    ];
  }

  // Method to create each card
  Widget policycard({required String imagepath, required String title, required String subtitle}) {
    return Container(
      height: 250,
      width: MediaQuery.of(context).size.width/4.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border:  Border.all(color: Colors.black12,width: 5),
        color: Colors.white10,
      ),
      padding: const EdgeInsets.all(1.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: CircleAvatar(backgroundImage: AssetImage(imagepath),
              radius: 50,
            ),
          ),

          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors. black,
              fontSize: 17,
            ),
          ),
          SizedBox(height: 5),
          Text(
            subtitle,
            style: TextStyle(
              color: Colors.black,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );



  }










}
