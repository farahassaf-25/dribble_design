import 'package:dribble_design/widgets/custom_bottom_navbar.dart';
import 'package:dribble_design/widgets/custom_current_location.dart';
import 'package:dribble_design/widgets/custom_location.dart';
import 'package:flutter/material.dart';
import 'package:dribble_design/widgets/custom_price.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black12,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(Icons.menu),
                    ),
                    const Column(
                      children: [
                        Text(
                          'Current location',
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 14,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.blue,
                              size: 16,
                            ),
                            Text(
                              'Melbourne, Aus',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black12,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(Icons.tune),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.03),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search,
                        size: 28,
                        color: Colors.black38,
                      ),
                      SizedBox(width: width * 0.02),
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration.collapsed(
                            hintText: 'Search for dream house',
                            hintStyle: TextStyle(color: Colors.black26),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.03),
                const CustomCurrentLocation(),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    width: width,
                    margin: EdgeInsets.only(top: height * 0.03),
                    child: Column(
                      children: [
                        const CustomPrice(
                            price: '1.199', image: 'assets/images/house_3.jpg'),
                        SizedBox(height: height * 0.03),
                        const CustomLocation(
                            loc1: 'Whitespace house',
                            loc2: 'Melbourne, Australia'),
                        SizedBox(height: height * 0.03),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: CustomBottomNavbar(),
          ),
        ],
      ),
    );
  }
}
