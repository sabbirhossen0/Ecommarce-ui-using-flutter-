import 'package:flutter/material.dart';

class contact extends StatefulWidget {
  const contact({super.key});

  @override
  State<contact> createState() => _contactState();
}

class _contactState extends State<contact> {
  TextEditingController name =TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController phone=TextEditingController();
  TextEditingController msg=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [

    Container(
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black12,)

      ),
width: 270,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
            CircleAvatar(backgroundImage: AssetImage('assets/about/calling.png'),
              radius: 17,
            ),
                SizedBox(width: 5,),
            Text('Call To Us',style: TextStyle(
              fontWeight: FontWeight.bold
            ),),
              ],
            ),
            SizedBox(height: 13,),
            Text('We are available 24/7, 7 days a week.'),
            SizedBox(height: 13,),
            Text('Phone: +8801770995701'),
            SizedBox(height: 13,),
            Row(
              children: [
                CircleAvatar(backgroundImage: AssetImage('assets/about/mail.png'),
                  radius: 17,
                ),
                SizedBox(width: 5,),
                Text('Write To US',style: TextStyle(
                  fontWeight: FontWeight.bold,

                ),),


              ],
            ),
            SizedBox(height: 13,),
            Text('Fill out our form and we will contact you within 24 hours.'),
            SizedBox(height: 13,),
            Text('Emails: customer@exclusive.com'),
            SizedBox(height: 13,),
            Text('Emails: support@exclusive.com')

          ],
        ),
      ),
    ),
    SizedBox(width: 20,),

    Container(
      decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black12,)

      ),
      width: 700,

      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(

          children: [
            Container(
        width:200,
        child: TextField(
           controller:name,
          keyboardType:TextInputType.numberWithOptions(),
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            label: Text('Name'),
            fillColor: Colors.white10, // Background color inside the TextField
            filled: true,
          ),

        ),
            ),
            SizedBox(width: 15,),
            Container(
        width:200,
        child: TextField(
           controller: email,
          keyboardType:TextInputType.numberWithOptions(),
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            label: Text('Email'),
            fillColor: Colors.white10, // Background color inside the TextField
            filled: true,

          ),

        ),
            ),
            SizedBox(width: 15,),
            Container(
        width:200,
        child: TextField(
           controller:phone,
          keyboardType:TextInputType.numberWithOptions(),
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            label: Text('Phone'),
            fillColor: Colors.white10, // Background color inside the TextField
            filled: true,

          ),

        ),
            ),
          ],
        ),
            SizedBox(
               height: 30,
            ),
            Container(

              width: 630,

              child: TextField(
                 controller: msg,
                decoration:InputDecoration(
                  label: Text('Massage..'),
                  border:  OutlineInputBorder(),
                  fillColor: Colors.white10, // Background color inside the TextField
                  filled: true,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child:Center(
                    child: Text('Submit',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 19
                    ),),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    )



  ],
)
      ],
    );
  }
}
