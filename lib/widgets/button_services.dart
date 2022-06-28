import 'package:flutter/material.dart';
import 'package:trackizer/utils/constants.dart';

Widget servicesButton(String icon, String name, double price) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 10),
    margin: const EdgeInsets.symmetric(vertical: 5),
    decoration: BoxDecoration(
      border: Border.all(
        width: 1,
        color: bgUp,
      ),
      borderRadius: BorderRadius.circular(20),
    ),
    child: InkWell(
      child: ListTile(
        leading: Image.asset(
          "assets/logo_$icon.png",
          height: 40,
        ),
        title: Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        trailing: Text(
          "\$$price",
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ),
    ),
  );
}
