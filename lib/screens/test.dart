// // ignore_for_file: prefer_const_constructors, avoid_print

// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class Test extends StatefulWidget {
//   @override
//   State<Test> createState() => _TestState();
// }

// class _TestState extends State<Test> {
//   // Future<Result>? futureResult;
//   final url = Uri.parse(
//       'https://panel.supplyline.network/api/product/search-suggestions/?limit=10&offset=10&search=rice');

//   getData() {
//     http.get(url).then((response) {
//       print(response.body);
//       final data = jsonDecode(response.body);
//       final result = data['data']['products']['results'][0];
//       print(data['data']['products']['results'][0]['product_name']);
//       return Result.fromJson(result);
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     futureResult = getData();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder<Result>(
//         future: futureResult,
//         builder: (context, AsyncSnapshot snapshot) {
//           if (snapshot.hasData) {
//             print('object');
//             // print(snapshot.data['results'][0]['product_name']);
//             return Center(child: Text(snapshot.data()['slug']));
//           } else if (snapshot.hasError) {
//             return Text('${snapshot.error}');
//           }
//           return const CircularProgressIndicator();
//         },
//       ),
//     );
//   }
// }
