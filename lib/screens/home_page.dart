// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:techsist_task/ApiService/api_service.dart';
import 'package:techsist_task/modal/data.dart';

import '../components/custom_textfield.dart';
import '../utils/utils.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.backgroundColor,
      body: FutureBuilder<List<Result>>(
          future: ApiService().getProducts(),
          builder: (context, AsyncSnapshot snapshot) {
            // print(snapshot.data[0].productName.toString());
            return snapshot.data != null
                ? Padding(
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
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                // maxCrossAxisExtent: 200,
                                crossAxisCount: 2,

                                childAspectRatio: 4 / 6,
                                //  child aspect ratio is basically width/height of the grid. So let's say you want the width of each grid to be 30 and the height to be 20, you would set the aspect ratio to be 3/2.
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20,
                              ),
                              itemCount: snapshot.data.length,
                              itemBuilder: (BuildContext ctx, index) {
                                return Stack(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Column(
                                        children: [
                                          // Image.asset(
                                          //   'assets/images/chips.png',
                                          //   height: 100,
                                          // ),
                                          Image.network(
                                            snapshot.data[index].image,
                                            height: 100,
                                          ),
                                          SizedBox(height: 10),
                                          AutoSizeText(
                                            snapshot.data[index].productName,
                                            // '????????? ????????????????????? ???????????????????????? ???????????? ???????????????',
                                            maxLines: 2,
                                            style: TextStyle(
                                              // : 18,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    '????????????',
                                                    style:
                                                        TextStyle(fontSize: 9),
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text(
                                                    snapshot.data[index].charge
                                                        .currentCharge
                                                        .toString(),

                                                    // '??? 20.00',
                                                    style: TextStyle(
                                                      color: Utils.colorMaroon,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    snapshot.data[index].amount,
                                                    // '??? 22.00',
                                                    style: TextStyle(
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      color: Utils.colorMaroon,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    '??????????????????',
                                                    style:
                                                        TextStyle(fontSize: 9),
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text(
                                                    snapshot.data[index].charge
                                                        .sellingPrice
                                                        .toString(),

                                                    // '??? 25.00',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    '?????????',
                                                    style: TextStyle(
                                                      fontSize: 9,
                                                    ),
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text(
                                                    snapshot.data[index].charge
                                                        .profit
                                                        .toString(),
                                                    // '??? 5.00',
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color: Color(0xff1400AE),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                : Center(
                    child: CircularProgressIndicator(color: Utils.colorMaroon),
                  );
          }),
    );
  }
}
