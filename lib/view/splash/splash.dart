import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {

  @override
  void initState() {
    super.initState();

    // Navigate after a delay
    Future.delayed(const Duration(seconds: 4), () {
    Get.offNamed('/nav');
    });
  }




  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child:Column(
          children: [
            Lottie.asset('assets/lottie/shop.json'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/general/logo.png', height: 30,width: 30,),
                Text('Peart Store ',style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                ),),
              ],
            )

          ],
        ) ),
      ],
    );
  }
}
