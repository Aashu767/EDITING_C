// // // // ignore_for_file: public_member_api_docs, sort_constructors_first, empty_constructor_bodies
// // // // // ignore_for_file: sized_box_for_whitespace

// // // // import 'dart:async';
// // // // import 'package:editing_c/login.dart';
// // // // import 'package:flutter/material.dart';
// // // // import 'dart:math' as math;

// // // // class SplashScreen extends StatefulWidget {
// // // //   const SplashScreen({super.key});

// // // //   @override
// // // //   State<SplashScreen> createState() => _SplashScreenState();
// // // // }

// // // // class _SplashScreenState extends State<SplashScreen>
// // // //     with TickerProviderStateMixin {
// // // //   late final AnimationController _controller =
// // // //       AnimationController(duration: const Duration(seconds: 3), vsync: this)
// // // //         ..repeat();

// // // //   @override
// // // //   void initState() {
// // // //     super.initState();
// // // //     Timer(
// // // //       const Duration(seconds: 3),
// // // //       () => Navigator.pushReplacement(
// // // //         context,
// // // //         MaterialPageRoute(builder: (context) => const Login()),
// // // //       ),
// // // //     );
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //         appBar: AppBar(
// // // //           title: const Text('Splash Screen'),
// // // //           centerTitle: true,
// // // //           backgroundColor: Colors.teal,
// // // //         ),
// // // //         backgroundColor: Colors.white,
// // // //         body: Column(
// // // //           children: [
// // // //             SizedBox(
// // // //               height: MediaQuery.of(context).size.height * 0.2,
// // // //             ),
// // // //             Center(
// // // //               child: AnimatedBuilder(
// // // //                   animation: _controller,
// // // //                   child: Container(
// // // //                     height: MediaQuery.of(context).size.height * 0.4,
// // // //                     width: MediaQuery.of(context).size.width * 0.8,
// // // //                     child: const Center(
// // // //                       child: Image(
// // // //                           image: NetworkImage(
// // // //                               'https://t4.ftcdn.net/jpg/01/19/11/55/360_F_119115529_mEnw3lGpLdlDkfLgRcVSbFRuVl6sMDty.jpg')),
// // // //                     ),
// // // //                   ),
// // // //                   builder: (BuildContext context,  child) {
// // // //                     return Transform.rotate(
// // // //                       angle: _controller.value * 2.0 * math.pi,
// // // //                       child: child,
// // // //                     );
// // // //                   }),
// // // //             ),
// // // //           ],
// // // //         ),
// // // //     );
// // // //   }
// // // // }

// // // // ignore_for_file: library_private_types_in_public_api, avoid_unnecessary_containers

// // // import 'dart:async';
// // // import 'dart:convert';

// // // import 'package:flutter/material.dart';
// // // import 'package:http/http.dart' as http;

// // // Future<List<dynamic>> getCategoriesApi() async {
// // //   http.Response response1 =
// // //       await http.get("http://159.89.228.206/" as Uri);
// // //   Map<String, dynamic> decodedCategories = json.decode(response1.body);
// // //   //print(response1);
// // //   return decodedCategories['categories'];
// // // }

// // // Future<List<dynamic>> getProductsApi() async {
// // //   http.Response response =
// // //       await http.get("http://159.89.228.206/" as Uri);
// // //   Map<String, dynamic> decodedCategories2 = json.decode(response.body);
// // //   // print(response);
// // //   return decodedCategories2['last'];
// // // }

// // // class MyHomePage extends StatefulWidget {
// // //    MyHomePage({super.key}

// // //   )

// // //   @override

// // //   _MyHomePageState createState() {
// // //     return _MyHomePageState();
// // //   }
// // // }

// // // class _MyHomePageState extends State<MyHomePage> {
// // //   final ScrollController _scrollController =  ScrollController();

// // //   late List<dynamic> products;
// // //   late List<dynamic> categories;

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //         appBar: AppBar(

// // //         ),
// // //         body: Column(children: <Widget>[
// // //           Expanded(
// // //             child: CustomScrollView(
// // //               controller: _scrollController,
// // //               slivers: <Widget>[
// // //                 SliverToBoxAdapter(
// // //                   child: SizedBox(
// // //                     height: 120.0,
// // //                     child: FutureBuilder(
// // //                         future: getCategoriesApi(),
// // //                         builder: (BuildContext context,
// // //                             AsyncSnapshot<List<dynamic>> snapshot) {
// // //                           if (snapshot.connectionState ==
// // //                               ConnectionState.done) {
// // //                             return ListView.builder(
// // //                               scrollDirection: Axis.horizontal,
// // //                               itemBuilder: (context, index) {
// // //                                 Map<String, String> category =
// // //                                     snapshot.data?[index].cast<String, String>();
// // //                                 return Card(
// // //                                   child: Container(
// // //                                     height: double.infinity,
// // //                                     color: Colors.grey[200],
// // //                                     child: Center(
// // //                                       child: Padding(
// // //                                         padding: const EdgeInsets.all(30.0),
// // //                                         child: Text(category["name"]!),
// // //                                       ),
// // //                                     ),
// // //                                   ),
// // //                                 );
// // //                               },
// // //                               itemCount: snapshot.data?.length,
// // //                             );
// // //                           } else {
// // //                             return const Center(child: CircularProgressIndicator());
// // //                           }
// // //                         }),
// // //                   ),
// // //                 ),
// // //                 SliverToBoxAdapter(
// // //                   child: Container(
// // //                     child: FutureBuilder(
// // //                         future: getProductsApi(),
// // //                         builder: (BuildContext context,
// // //                             AsyncSnapshot<List<dynamic>> snapshot) {
// // //                           if (snapshot.connectionState ==
// // //                               ConnectionState.done) {
// // //                             SliverGrid(
// // //                               gridDelegate:
// // //                                   const SliverGridDelegateWithFixedCrossAxisCount(
// // //                                 crossAxisCount: 2,
// // //                                 childAspectRatio: 0.8,
// // //                               ),
// // //                               delegate: SliverChildBuilderDelegate(
// // //                                 (context, index) {
// // //                                   Map<String, String> product = snapshot
// // //                                       .data?[index]
// // //                                       .cast<String, String>();

// // //                                   return Card(
// // //                                     child: Container(
// // //                                       height: double.infinity,
// // //                                       color: Colors.grey[200],
// // //                                       child: Center(
// // //                                         child: Padding(
// // //                                           padding: const EdgeInsets.all(30.0),
// // //                                           child: Text(product["name"]!),
// // //                                         ),
// // //                                       ),
// // //                                     ),
// // //                                   );
// // //                                 },
// // //                                 childCount: snapshot.data?.length,
// // //                               ),
// // //                             );
// // //                           } else {
// // //                             return const Center(child: CircularProgressIndicator());
// // //                           }
// // //                             }
// // //                       ),
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //           )
// // //         ]));
// // //   }
// // // }

// // // ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, avoid_print, prefer_final_fields, unnecessary_brace_in_string_interps

// // import 'package:flutter/material.dart';

// // class MyHomePage extends StatefulWidget {
// //   const MyHomePage({super.key});

// //   @override
// //   State<MyHomePage> createState() => _MyHomePageState();
// // }

// // class _MyHomePageState extends State<MyHomePage> {
// //   TextEditingController _controllerA = TextEditingController();
// //   TextEditingController _controllerB = TextEditingController();
// //   double _multiplier = 110.0;
// //   double _result1 = 0.0;
// //   double _result2 = 0.0;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         appBar: AppBar(
// //           title: const Center(child: Text('Add Fruit')),
// //           backgroundColor: Colors.white,
// //         ),
// //         backgroundColor: Colors.white,
// //         body: SingleChildScrollView(
// //           child: Padding(
// //             padding: const EdgeInsets.all(10),
// //             child: Column(
// //               children: [
// //                 const Divider(
// //                   thickness: 1,
// //                   indent: 5,
// //                   endIndent: 5,
// //                 ),
// //                 const SizedBox(
// //                   height: 15,
// //                 ),
// //                 Padding(
// //                   padding: const EdgeInsets.all(8.0),
// //                   child: Row(
// //                     children: [
// //                       Image.network(
// //                         "https://st.depositphotos.com/1177973/3623/i/450/depositphotos_36231149-stock-photo-fresh-fruit-juices-on-wooden.jpg",
// //                         height: 100,
// //                         width: 100,
// //                       ),
// //                       const Column(
// //                         children: [
// //                           Text("REAL FRUIT\nPOWER JUICE\nPRICE\n₹110"),
// //                           SizedBox(
// //                             height: 20,
// //                           ),
// //                           Text(
// //                             'Product Id : 000003',
// //                             style: TextStyle(color: Colors.grey),
// //                           )
// //                         ],
// //                       ),
// //                       const SizedBox(
// //                         width: 50,
// //                       ),
// //                       Text(
// //                         "₹${_result1 * _result2}",
// //                         style: const TextStyle(fontSize: 20),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //                 const SizedBox(
// //                   height: 20,
// //                 ),
// //                 Padding(
// //                   padding: const EdgeInsets.all(15),
// //                   child: Row(
// //                     children: [
// //                       Container(
// //                         width: MediaQuery.of(context).size.width * 0.40,
// //                         height: MediaQuery.of(context).size.height * 0.05,
// //                         child: TextFormField(
// //                           keyboardType: TextInputType.number,
// //                           controller: _controllerA,
// //                           onChanged: (value) {
// //                             setState(() {
// //                               _result2 = double.tryParse(value) ?? 0.0;
// //                               if (_result2 == 0) {
// //                                 _result2 = 1;
// //                               }
// //                             });
// //                           },
// //                           decoration: const InputDecoration(
// //                             hintText: '0',
// //                             labelText: 'In Bundle',
// //                             border: OutlineInputBorder(),
// //                             contentPadding: EdgeInsets.symmetric(
// //                               vertical: 10.0,
// //                               horizontal: 10.0,
// //                             ),
// //                           ),
// //                         ),
// //                       ),
// //                       const SizedBox(
// //                         width: 5,
// //                       ),
// //                       Container(
// //                         width: MediaQuery.of(context).size.width * 0.40,
// //                         height: MediaQuery.of(context).size.height * 0.05,
// //                         child: TextFormField(
// //                           keyboardType: TextInputType.number,
// //                           controller: _controllerB,
// //                           onChanged: (value) {
// //                             setState(() {
// //                               _result1 = double.tryParse(value) ?? 0.0;
// //                               _result1 *= _multiplier;
// //                             });
// //                           },
// //                           decoration: const InputDecoration(
// //                             hintText: '0',
// //                             labelText: 'In Quantity',
// //                             border: OutlineInputBorder(),
// //                             contentPadding: EdgeInsets.symmetric(
// //                               vertical: 10.0,
// //                               horizontal: 10.0,
// //                             ),
// //                           ),
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //                 const SizedBox(
// //                   height: 15,
// //                 ),
// //                 const Divider(
// //                   thickness: 1,
// //                   indent: 5,
// //                   endIndent: 5,
// //                 ),
// //                 const SizedBox(
// //                   height: 400,
// //                 ),
// //                 InkWell(
// //                   onTap: () {
// //                     final snackBar = SnackBar(
// //                         backgroundColor: Colors.grey,
// //                         content: const Text(
// //                           'Order Added',
// //                           style: TextStyle(color: Colors.yellow),
// //                         ),
// //                         duration: const Duration(seconds: 2),
// //                         action: SnackBarAction(
// //                           textColor: Colors.yellow,
// //                           label: 'Undo',
// //                           onPressed: () {},
// //                         ));
// //                     ScaffoldMessenger.of(context).showSnackBar(snackBar);
// //                   },
// //                   child: Container(
// //                     height: MediaQuery.of(context).size.height * 0.06,
// //                     width: MediaQuery.of(context).size.width * 0.8,
// //                     decoration: BoxDecoration(
// //                         color: Colors.black,
// //                         borderRadius: BorderRadius.circular(50)),
// //                     child: const Center(
// //                       child: Text(
// //                         "Add Order",
// //                         style: TextStyle(color: Colors.white, fontSize: 22),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                 // ElevatedButton(
// //                 //   style: const ButtonStyle(
// //                 //       backgroundColor: MaterialStatePropertyAll(Colors.black)),
// //                 //   onPressed: () {
// //                 //     print('order Added');
// //                 //   },
// //                 //   child: const Text(
// //                 //     'Add Order',
// //                 //     style: TextStyle(color: Colors.white),
// //                 //   ),
// //                 // )
// //               ],
// //             ),
// //           ),
// //         ));
// //   }
// // }

// // ignore_for_file: use_super_parameters, prefer_final_fields, sized_box_for_whitespace

// import 'package:flutter/material.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   TextEditingController _controllerA = TextEditingController();
//   TextEditingController _controllerB = TextEditingController();
//   double _multiplier = 110.0;
//   double _result1 = 0.0;
//   double _result2 = 0.0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Center(child: Text('Add Fruit')),
//         backgroundColor: Colors.white,
//       ),
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(10),
//           child: Column(
//             children: [
//               const Divider(
//                 thickness: 1,
//                 indent: 5,
//                 endIndent: 5,
//               ),
//               const SizedBox(
//                 height: 15,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   children: [
//                     Image.network(
//                       "https://st.depositphotos.com/1177973/3623/i/450/depositphotos_36231149-stock-photo-fresh-fruit-juices-on-wooden.jpg",
//                       height: 100,
//                       width: 100,
//                     ),
//                     const SizedBox(width: 10),
//                     const Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text("REAL FRUIT\nPOWER JUICE\nPRICE\n₹110"),
//                         SizedBox(height: 20),
//                         Text(
//                           'Product Id : 000003',
//                           style: TextStyle(color: Colors.grey),
//                         )
//                       ],
//                     ),
//                     const Spacer(),
//                     Text(
//                       "₹${_result1 * _result2}",
//                       style: const TextStyle(fontSize: 20),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(15),
//                 child: Row(
//                   children: [
//                     Container(
//                       width: MediaQuery.of(context).size.width * 0.40,
//                       height: MediaQuery.of(context).size.height * 0.05,
//                       child: TextFormField(
//                         keyboardType: TextInputType.number,
//                         controller: _controllerA,
//                         onChanged: (value) {
//                           setState(() {
//                             _result2 = double.tryParse(value) ?? 0.0;
//                             if (_result2 == 0) {
//                               _result2 = 1;
//                             }
//                           });
//                         },
//                         decoration: const InputDecoration(
//                           hintText: '0',
//                           labelText: 'In Bundle',
//                           border: OutlineInputBorder(),
//                           contentPadding: EdgeInsets.symmetric(
//                             vertical: 10.0,
//                             horizontal: 10.0,
//                           ),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 5,
//                     ),
//                     Container(
//                       width: MediaQuery.of(context).size.width * 0.40,
//                       height: MediaQuery.of(context).size.height * 0.05,
//                       child: TextFormField(
//                         keyboardType: TextInputType.number,
//                         controller: _controllerB,
//                         onChanged: (value) {
//                           setState(() {
//                             _result1 = double.tryParse(value) ?? 0.0;
//                             _result1 *= _multiplier;
//                           });
//                         },
//                         decoration: const InputDecoration(
//                           hintText: '0',
//                           labelText: 'In Quantity',
//                           border: OutlineInputBorder(),
//                           contentPadding: EdgeInsets.symmetric(
//                             vertical: 10.0,
//                             horizontal: 10.0,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 15,
//               ),
//               const Divider(
//                 thickness: 1,
//                 indent: 5,
//                 endIndent: 5,
//               ),
//               const SizedBox(
//                 height: 300,
//               ),
//               InkWell(
//                 onTap: () {
//                   final snackBar = SnackBar(
//                     backgroundColor: Colors.grey,
//                     content: const Text(
//                       'Order Added',
//                       style: TextStyle(color: Colors.yellow),
//                     ),
//                     duration: const Duration(seconds: 2),
//                     action: SnackBarAction(
//                       textColor: Colors.yellow,
//                       label: 'Undo',
//                       onPressed: () {},
//                     ),
//                   );
//                   ScaffoldMessenger.of(context).showSnackBar(snackBar);
//                 },
//                 child: Container(
//                   height: MediaQuery.of(context).size.height * 0.06,
//                   width: MediaQuery.of(context).size.width * 0.8,
//                   decoration: BoxDecoration(
//                     color: Colors.black,
//                     borderRadius: BorderRadius.circular(50),
//                   ),
//                   child: const Center(
//                     child: Text(
//                       "Add Order",
//                       style: TextStyle(color: Colors.white, fontSize: 22),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


// ignore_for_file: avoid_print

