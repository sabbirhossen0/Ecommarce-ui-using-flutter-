import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class about extends StatefulWidget {
  const about({super.key});

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //story and lottie
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: MediaQuery.of(context).size.width/2.2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text('Our Story',style: TextStyle(
                       color: Colors.black,
                       fontSize: 35,
                       fontWeight: FontWeight.bold
                     ),),

                     Text('Launced in 2015, Exclusive is South Asia’s premier online shopping makterplace with an active presense in Bangladesh. Supported by wide range of tailored marketing, data and service solutions, Exclusive has 10,500 sallers and 300 brands and serves 3 millioons customers across the region. ',style: TextStyle(
                       fontSize: 15
                     ),softWrap: true,),
                     Text('Exclusive has more than 1 Million products to offer, growing at a very fast. Exclusive offers a diverse assotment in categories ranging  from consumer.',style: TextStyle(
                       fontSize: 15
                     ),softWrap: true,)


                   ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width/2.2,
              child: Lottie.asset('assets/lottie/shop.json'),
            ),




          ],
        ),
        SizedBox(height: 100,),

        // here progress
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:progress(),
          ),
        ),
        SizedBox(height: 100,),
        //executive
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: admin(),
          ),
        ),

        SizedBox(height: 100,),
        //policy

        Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: policy(),
        ),

        SizedBox(height: 100,),
      ],
    );
  }




  List<Widget> progress() {
    return [
      progresscard(
        icon: Icons.account_circle,
        title: '10.5K',
        subtitle: 'Sallers active our site',
      ),
      SizedBox(width: 15, height: 15), // Adds space between items
      progresscard(
        icon: Icons.production_quantity_limits,
        title: '33K',
        subtitle: 'Monthly Product sell',
      ),
      SizedBox(width: 15, height: 15),
      progresscard(
        icon: Icons.supervisor_account_outlined,
        title: '45.5K',
        subtitle: 'Customer active in our site',
      ),
      SizedBox(width: 15, height: 15),
      progresscard(
        icon: Icons.sell_sharp,
        title: '25K',
        subtitle: 'Anual gross sale in our site',
      ),



    ];
  }

  // Method to create each card
  Widget progresscard({required IconData icon, required String title, required String subtitle}) {
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
          CircleAvatar(
              child: Icon(icon, color: Colors.black, size: 40,)

          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors. black,
              fontSize: 25,
            ),
          ),
          SizedBox(height: 5),
          Text(
            subtitle,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
  
  //founder and another executive
  List<Widget>admin(){
    return[
      admincard(name: 'Minhaz khan', deg: 'CEO & Founder', imagepath: 'assets/about/man1.png',),
      admincard(name: 'muntaha', deg: 'COO & Co-Founder', imagepath: 'assets/about/man2.png',),
      admincard(name: 'Mahadi', deg: 'CTO and Co-Founder', imagepath: 'assets/about/man3.png',),

    ];
}
  Widget admincard({required String name,required String deg,required String imagepath}){
return Container(
  width: MediaQuery.of(context).size.width/3.3,
  height: 500,
  decoration: BoxDecoration(
    border: Border.all(color: Colors.black12, width: 3),
    borderRadius: BorderRadius.circular(10)
  ),
  child: Column(
     children: [
       
       Container(
         child: Image.asset(imagepath,height: 430,),
       ),
       Text(name,style: TextStyle(
          color: Colors.black,
       fontWeight: FontWeight.bold
       ),),
       Text(deg,style: TextStyle(
         color: Colors.black,

       ),)
       
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
