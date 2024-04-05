import 'dart:math';

import 'package:flutter/material.dart';

class CustomLocation extends StatelessWidget {
  const CustomLocation({super.key, required this.loc1, required this.loc2});

  final String loc1;
  final String loc2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              loc1,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(width: 5),
            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: Colors.black38,
                  size: 16,
                ),
                Text(
                  loc2,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black38,
                    fontSize: 16,
                  ),
                ),
              ],
            )
          ],
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black12, width: 1),
          ),
          child: Transform.rotate(
            angle: pi / -4,
            child: const Icon(Icons.arrow_downward),
          ),
        ),
      ],
    );
  }
}
