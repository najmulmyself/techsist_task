// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../components/custom_textfield.dart';
import '../utils/utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 50),
                CustomTextField(),
                SizedBox(height: 50),
                GridView.builder(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      // maxCrossAxisExtent: 200,
                      crossAxisCount: 2,

                      childAspectRatio: 4 / 6,
                      // fixed with this answer child aspect ratio is basically width/height of the grid. So let's say you want the width of each grid to be 30 and the height to be 20, you would set the aspect ratio to be 3/2.
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemCount: 12,
                    itemBuilder: (BuildContext ctx, index) {
                      return Container(
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/chips.png',
                              height: 100,
                            ),
                            SizedBox(height: 10),
                            AutoSizeText(
                              'লেস ক্লাসিক ফ্যামিলি সাইজ চিপস্',
                              maxLines: 2,
                              style: TextStyle(
                                // : 18,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'ক্রয়',
                                      style: TextStyle(fontSize: 9),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '৳ 20.00',
                                      style: TextStyle(
                                        color: Utils.colorMaroon,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '৳ 22.00',
                                      style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        color: Utils.colorMaroon,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'বিক্রয়',
                                      style: TextStyle(fontSize: 9),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '৳ 25.00',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'লাভ',
                                      style: TextStyle(
                                        fontSize: 9,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '৳ 5.00',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
