// // // ignore_for_file: avoid_print

// // import 'package:editing_c/DisplayUserInfoPage.dart';
// // import 'package:flutter/material.dart';

// // class Login extends StatefulWidget {
// //   const Login({super.key});

// //   @override
// //   State<Login> createState() => _LoginState();
// // }

// // class _LoginState extends State<Login> {
// //   final _formKey = GlobalKey<FormState>();
// //   TextEditingController userName = TextEditingController();
// //   TextEditingController password = TextEditingController();

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text("Login Page"),
// //       ),
// //       body: Form(
// //         key: _formKey,
// //         child: Padding(
// //           padding: const EdgeInsets.all(16.0),
// //           child: Column(
// //             children: [
// //               TextFormField(
// //                 controller: userName,
// //                 validator: (value) {
// //                   if (value == null || value.isEmpty) {
// //                     print('Please enter your username');
// //                   }
// //                   return null;
// //                 },
// //                 decoration: InputDecoration(
// //                     hintText: 'Enter UserName',
// //                     labelText: 'UserName',
// //                     border: OutlineInputBorder(
// //                         borderRadius: BorderRadius.circular(20))),
// //               ),
// //               const SizedBox(
// //                 height: 10,
// //               ),
// //               TextFormField(
// //                 controller: password,
// //                 obscureText: true,
// //                 decoration: InputDecoration(
// //                   hintText: 'Enter Password',
// //                   labelText: 'Password',
// //                   border: OutlineInputBorder(
// //                     borderRadius: BorderRadius.circular(20),
// //                   ),
// //                 ),
// //                 validator: (value) {
// //                   if (value == null || value.isEmpty) {
// //                     return 'Please enter your username';
// //                   }
// //                   return null;
// //                 },
// //               ),
// //               const SizedBox(
// //                 height: 10,
// //               ),
// //               ElevatedButton(
// //                   onPressed: () {
// //                     if (userName.text.isNotEmpty) {
// //                       if (password.text.isNotEmpty) {
// //                         Navigator.push(
// //                           context,
// //                           MaterialPageRoute(
// //                             builder: (context) => DisplayUserInfoPage(
// //                               username: userName.text,
// //                               password: password.text,
// //                             ),
// //                           ),
// //                         );
// //                       }
// //                     } else {
// //                       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
// //                         content: Text("Enter UserName and Password"),
// //                         backgroundColor: Colors.teal,
// //                       ));
// //                     }
// //                     // if (_formKey.currentState!.validate()) {
// //                     //   Navigator.push(
// //                     //     context,
// //                     //     MaterialPageRoute(
// //                     //       builder: (context) => DisplayUserInfoPage(
// //                     //         username: userName.text,
// //                     //         password: password.text,
// //                     //       ),
// //                     //     ),
// //                     //   );
// //                     // } else {
// //                     //   ScaffoldMessenger.of(context)
// //                     //       .showSnackBar(const SnackBar(
// //                     //     content: Text("Enter UserName and Password"),
// //                     //     backgroundColor: Colors.teal,
// //                     //   ));
// //                     // }
// //                   },
// //                   child: const Text('Submit')),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // ignore_for_file: camel_case_types, avoid_print

// import 'package:editing_c/SplashScreen/splash.dart';
// import 'package:flutter/material.dart';

// class login extends StatefulWidget {
//   const login({super.key});

//   @override
//   State<login> createState() => _loginState();
// }

// class _loginState extends State<login> {
//   final _formKey = GlobalKey<FormState>();
//   TextEditingController username = TextEditingController();
//   TextEditingController password = TextEditingController();

//   var url =
//       'http://140.238.162.89/ServiceWebAPI/Service.asmx/Ws_Validate_Login';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('LOG IN API'),
//       ),
//       body: Form(
//           key: _formKey,
//           child: Padding(
//             padding: const EdgeInsets.all(10),
//             child: Column(
//               children: [
//                 TextFormField(
//                   controller: username,
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       print('please enter your username');
//                     }
//                     return null;
//                   },
//                   decoration: InputDecoration(
//                       hintText: 'Enter username',
//                       labelText: 'Username',
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(25))),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 TextFormField(
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       print('enter your password');
//                     }
//                     return null;
//                   },
//                   controller: password,
//                   decoration: InputDecoration(
//                       hintText: 'Enter password',
//                       labelText: 'password',
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(25))),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 ElevatedButton(
//                     onPressed: () {
//                       if (username.text.isEmpty) {
//                         if (password.text.isEmpty) {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => const MyHomePage()));
//                         }
//                       } else {
//                         ScaffoldMessenger.of(context)
//                             .showSnackBar(const SnackBar(
//                           content: Text('enter username and password'),
//                           backgroundColor: Colors.teal,
//                         ));
//                       }
//                     },
//                     child: const Text('LOG IN'))
//               ],
//             ),
//           )),
//     );
//   }
// }

// ignore_for_file: avoid_print, camel_case_types, unused_element, unused_local_variable, prefer_typing_uninitialized_variables, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:editing_c/model.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

// class login extends StatefulWidget {
//   const login({super.key});

//   @override
//   State<login> createState() => _loginState();
// }

// class _loginState extends State<login> {
//   List<MenuModel> lsit1 = [];

//   @override
//   void initState() {
//     super.initState();
//   }

//   void main() async {
//     var res = await http.post(
//         Uri.parse(
//             "http://140.238.162.89/ServiceWebAPI/Service.asmx/Ws_Get_All_MenuLinks"),
//         body: {
//           "UserID": "1192",
//         });
//     var bodyIs = res.body;
//     print(bodyIs);
//     var statusCode = res.statusCode;
//     var response;
//     if (response.statusCode == 200) {
//       setState(() {
//         var data = json.decode(response.body);
//       });

//       if (response.statusCode == 200) {
//         final jsonData = json.decode(response.body);
//         // Handle your JSON data here, such as parsing it into a model class
//         print(jsonData);
//       } else {
//         print('Request failed with status: ${response.statusCode}');
//       }
//     }

//     @override
//     Widget build(BuildContext context) {
//       return Scaffold(
//         backgroundColor: const Color.fromARGB(167, 209, 170, 170),
//         appBar: AppBar(
//           backgroundColor: Colors.blue,
//           title: const Text('hello'),
//         ),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(167, 209, 170, 170),
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: const Text('hello'),
//       ),
//     );
//   }
// }
class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  bool isLoading = false;
  List<MenuModel> dataList = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    // Define your request body here
    Map<String, dynamic> requestBody = {
      'menuId': 'Menu_Id',
      'menuName': 'Menu_Name',
      'count': 'Count',
    };

    final response = await http.post(
      Uri.parse(
          'http://140.238.162.89/ServiceWebAPI/Service.asmx/Ws_Get_All_MenuLinks'),
      body: {
        "UserID": "1192",
      },
      headers: {'Content-Type': 'application/json'},
    );

    var bodyIs = response.body;
    print(bodyIs);
    // var statusCode = response.statusCode;
    var data = jsonDecode(response.body);
    // print(data);

    if (response.statusCode == 200) {
      isLoading = true;
      for (Map i in data) {
        dataList.add(MenuModel.fromJson(i));
      }
      // for (var i in data) {
      //   MenuModel menu_model = MenuModel(
      //     menuId: i["Menu_Id"],
      //     menuName: i["Menu_Name"],
      //     count: i["Count"],
      //   );
      //   isLoading = true;
      //   dataList.add(menu_model);
      // }
      // final jsonData = json.decode(response.body);
      // setState(() {
      //   isLoading = true;
      //   // Assuming your API response is a list of strings
      //   var data = json.decode(response.body);
      // });
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API Data List'),
        centerTitle: true,
      ),
      body: !isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: dataList.length,
              itemBuilder: (context, index) {
                return ListTile(
                    title: Center(
                  child: Text(dataList[index].menuDetails.toString()),
                  // child: Text('${dataList['Menu_Details'][index]['Menu_Id']}')),
                ));
              },
            ),
    );
  }
}
