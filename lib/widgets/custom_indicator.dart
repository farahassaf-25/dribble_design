import 'package:flutter/material.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      left: 20,
      right: 20,
      child: Row(
        children: [
          Container(
            width: 18,
            height: 18,
            margin: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(color: Colors.grey),
              shape: BoxShape.circle,
            ),
          ),
          Container(
            width: 10,
            height: 10,
            margin: const EdgeInsets.only(left: 10),
            decoration:
                BoxDecoration(color: Colors.grey[300], shape: BoxShape.circle),
          ),
          Container(
            width: 10,
            height: 10,
            margin: const EdgeInsets.only(left: 10),
            decoration:
                BoxDecoration(color: Colors.grey[300], shape: BoxShape.circle),
          ),
        ],
      ),
    );
  }
}
