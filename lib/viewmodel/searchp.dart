import 'package:flutter/material.dart';
import 'package:get/get.dart';

class searchController extends GetxController {
  // Define an observable string variable
  var message = ''.obs;

  // Method to update the string value
  void Search(String newMessage) {
    message.value = newMessage;
  }

  // Method to reset the string to a default value
  void resetsearch() {
    message.value = '';
  }
}