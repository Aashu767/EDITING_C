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
import 'package:xml2json/xml2json.dart';
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
  bool isLoading = true;

  List<MenuModel> dataList = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    final response = await http.post(
        Uri.parse(
            'http://140.238.162.89/ServiceWebAPI/Service.asmx/Ws_Get_All_MenuLinks'),
        body: {
          "UserID": "1192",
        },
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/x-www-form-urlencoded"
        });
    var bodyIs = response.body;
    var statusCode = response.statusCode;
    if (statusCode == 200) {
      debugPrint("res is ${response.body}");
      debugPrint("Status Code is ${response.statusCode}");

      Xml2Json xml2Json = Xml2Json();

      xml2Json.parse(bodyIs);
      var jsonString = xml2Json.toParker();
      var data = jsonDecode(jsonString);
      var complaintObject = data['string'];
      // complaintObject = complaintObject.toString().replaceAll([/r/n]\\r\\\\n, "\n");
      complaintObject = complaintObject.toString().replaceAll('\r\n', '\n');

      var object = json.decode(complaintObject.toString());
      setState(() {
        object.forEach((v) {
          dataList.add(MenuModel.fromJson(v));
        });
        isLoading = false;
      });
    } else {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API Data List'),
        centerTitle: true,
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : dataList.isEmpty
              ? const Center(child: Text('Data not found'))
              : ListView.builder(
                  itemCount: dataList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                        title: Center(
                      child: Text(dataList[index].menuId.toString()),
                      // child: Text('${dataList['Menu_Details'][index]['Menu_Id']}')),
                    ));
                  },
                ),
    );
  }
}
