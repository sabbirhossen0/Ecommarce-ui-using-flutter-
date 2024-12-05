import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommarce/viewmodel/searchp.dart';

class searchview extends StatefulWidget {
  const searchview({super.key});

  @override
  State<searchview> createState() => _searchviewState();
}

class _searchviewState extends State<searchview> {

  final searchController searchcontrol = Get.put(searchController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Text(
          ''+searchcontrol.message.value,
          style: TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        )),
      ],
    );
  }
}
