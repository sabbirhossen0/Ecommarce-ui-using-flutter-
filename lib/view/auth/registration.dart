import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';
import 'package:ecommarce/responsive.dart';

class registration extends StatefulWidget {
  const registration({super.key});

  @override
  State<registration> createState() => _regState();
}

class _regState extends State<registration> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController name = TextEditingController();
  final TextEditingController phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
        return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: Colors.transparent
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //  crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/general/logo.png', height: 30,width: 30,),
                    Text('Peart Store ',style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if(Responsive.isDesktop(context))
                Container(
                  width: MediaQuery.of(context).size.width/2.2,
                  child: Center(
                    child:Lottie.asset('assets/lottie/shop.json') ,
                  ),
                ),
                SizedBox(width: 10,),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          width: MediaQuery.of(context).size.width/2.2,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Create an account',
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
SizedBox(height: 8,),
                                Text(
                                  'Enter your details below',
                                  style: TextStyle(fontSize: 14),
                                  textAlign: TextAlign.center,
                                ),

                                SizedBox(height: 20),
                                TextField(
                                  controller: name,
                                  decoration: InputDecoration(
                                    labelText: 'Name',
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(Icons.drive_file_rename_outline),
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                ),
                                SizedBox(height: 20),
                                TextField(
                                  controller: phone,
                                  decoration: InputDecoration(
                                    labelText: 'Phone',
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(Icons.phone_enabled),
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                ),




                                SizedBox(height: 20),
                                TextField(
                                  controller: emailController,
                                  decoration: InputDecoration(
                                    labelText: 'Email',
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(Icons.email),
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                ),
                                SizedBox(height: 20),
                                TextField(
                                  controller: passwordController,
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(Icons.lock),
                                  ),
                                  obscureText: true, // Hides the password input
                                ),
                                SizedBox(height: 20),

                                InkWell(
                                  onTap: (){
                                    Get.offNamed('log');
                                  },
                                  child: Align(
                                    alignment: Alignment.topRight,

                                    child: Container(
                                      height: 50,
                                      width: 200,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Center(
                                        child: Text('Sumbit',style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,

                                        ),),
                                      ),
                                    ),
                                  ),
                                ),







                                SizedBox(height: 20),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Already have account?'),
                                    TextButton(
                                      onPressed: () {
                                        // Navigate to Registration Page
                                      },
                                      child: InkWell(
                                        onTap: (){
                                          Get.offNamed('log');
                                        },
                                        child: Text('Login',style: TextStyle(
                                            color: Colors.black
                                        ),),
                                      ),
                                    ),
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),







              ],
            ),
          ],
        ),
      ),
    );
  }
}
