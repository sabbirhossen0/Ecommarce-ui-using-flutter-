import 'package:flutter/material.dart';
class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('cart')
      ],
    );
  }
}
