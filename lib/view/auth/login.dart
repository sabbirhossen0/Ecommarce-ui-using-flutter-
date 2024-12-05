import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.transparent
        ),
        child: Column(
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
            Padding(
              padding: const EdgeInsets.only(top: 90.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [

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
                                children: [
                                  Text(
                                    'Login!',
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
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
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: TextButton(
                                      onPressed: () {
                                        // Navigate to Forgot Password or Registration Page
                                      },
                                      child: Text('Forgot Password?',style: TextStyle(
                                        color: Colors.redAccent
                                      ),),
                                    ),
                                  ),



                                  InkWell(
                                    onTap: (){
                                      String email = emailController.text;
                                      String password = passwordController.text;

                                      if (email.isEmpty || password.isEmpty) {
                                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                          content: Text('Please fill out all fields. Testing perpose you able to go another activity'),
                                        ),
                                        );
                                        Get.offNamed('/nav');
                                      } else {
                                        // Add API integration or validation logic here
                                        print('Email: $email, Password: $password');
                                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                          content: Text('Login Successful!'),
                                        ));
                                      }





                                    },
                                    child: Container(
                                      width: 200,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(30)
                                      ),
                                      child:Center(
                                        child: Text('Login',style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 19
                                        ),),
                                      ),
                                    ),
                                  ),




                                  SizedBox(height: 20),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Don’t have an account?'),
                                      TextButton(
                                        onPressed: () {
                                          // Navigate to Registration Page
                                        },
                                        child: InkWell(
                                          onTap: (){
                                            Get.offNamed('reg');
                                          },
                                          child: Text('Sign Up',style: TextStyle(
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
                  SizedBox(width: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width/2.2,
                    child: Center(
                      child:Lottie.asset('assets/lottie/shop.json') ,
                    ),
                  ),





                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
