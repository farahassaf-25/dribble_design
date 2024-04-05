import 'package:flutter/material.dart';

class CustomFeatures extends StatelessWidget {
  const CustomFeatures({super.key, this.icon, this.text});

  final IconData? icon;
  final String? text;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.only(right: width * 0.04),
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.05, vertical: height * 0.01),
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: Row(
        children: [
          Icon(icon!),
          const SizedBox(width: 5),
          Text(text!),
        ],
      ),
    );
  }
}
