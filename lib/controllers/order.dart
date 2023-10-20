import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Orderpage extends GetxController {
  order(BuildContext context) {
    Get.dialog(
      AlertDialog(
        title: const Text("The product is ordered."),
        actions: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.check),
          ),
        ],
      ),
    );
  }
}
