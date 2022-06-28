import 'package:flutter/material.dart';
import 'package:trackizer/utils/constants.dart';

Widget onOffButton() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
    margin: const EdgeInsets.only(bottom: 20),
    decoration:
        BoxDecoration(color: bgSubs, borderRadius: BorderRadius.circular(25)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          decoration: BoxDecoration(
            color: const Color(0xFF1B1B21),
            borderRadius: BorderRadius.circular(25),
          ),
          child: TextButton(
            onPressed: (() {}),
            child: const Text(
              "Your Subscriptions",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          decoration: BoxDecoration(
            color: const Color(0xFF1B1B21),
            borderRadius: BorderRadius.circular(25),
          ),
          child: TextButton(
            onPressed: (() {}),
            child: const Text(
              "Upcoming Bills",
              style: TextStyle(color: Colors.white38),
            ),
          ),
        ),
      ],
    ),
  );
}
