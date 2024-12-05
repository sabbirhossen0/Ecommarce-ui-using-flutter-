import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:ecommarce/view/auth/login.dart';
import 'package:ecommarce/view/auth/registration.dart';


import 'package:ecommarce/view/splash/splash.dart';
import 'package:ecommarce/view/viewnavigate/viewnavigator.dart';

void main() {
  runApp(const Route());
}
class Route extends StatefulWidget {
  const Route({super.key});

  @override
  State<Route> createState() => _RouteState();
}

class _RouteState extends State<Route> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => splash()),
        GetPage(name: '/nav', page: () => viewnavigator()),
        GetPage(name: '/log', page: () => login()),
        GetPage(name: '/reg', page: () => registration()),

      ],
    );
  }
}

