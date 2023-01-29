import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ApplianceHeading extends StatelessWidget {
  const ApplianceHeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          customCard("APPLIANCE"),
          customCard("WATTAGE"),
          customCard("QUANTITY"),
          customCard("SELECT"),
        ],
      ),
    );
  }

  Widget customCard(String title) {
    return Card(
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 10),
        child: Text(
          "$title ",
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
