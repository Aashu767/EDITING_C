// ignore_for_file: non_constant_identifier_names, use_super_parameters, prefer_const_declarations, library_private_types_in_public_api, avoid_print, prefer_const_constructors, unnecessary_null_comparison, camel_case_types

// import 'package:editing_c/SplashScreen/splash.dart';
import 'package:editing_c/login.dart';
// import 'package:editing_c/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
}

// class TextFormFieldWidgetTest extends StatefulWidget {
//   const TextFormFieldWidgetTest({super.key});

//   @override
//   TextFormFieldWidgetTestState createState() => TextFormFieldWidgetTestState();
// }

// class TextFormFieldWidgetTestState extends State<TextFormFieldWidgetTest> {
//   final TextEditingController textFieldController = TextEditingController();
//   List<String> displayedTexts = [];
//   String deleted_item = '';
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: const Text('Text Entry Screen'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             TextField(
//               controller: textFieldController,
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(15))),
//                 labelText: 'Enter Text',
//               ),
//             ),
//             const SizedBox(height: 16.0),
//             ElevatedButton(
//               onPressed: () {
//                 addText();
//               },
//               child: const Text('Add Text'),
//             ),
//             const SizedBox(height: 16.0),
//             const Text('Display Texts:'),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: displayedTexts.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text(displayedTexts[index]),
//                     trailing: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         IconButton(
//                           icon: const Icon(Icons.edit),
//                           onPressed: () {
//                             editText(index);
//                           },
//                         ),
//                         IconButton(
//                           icon: const Icon(Icons.delete),
//                           onPressed: () {
//                             deleteText(index);
//                           },
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void addText() {
//     String enteredText = textFieldController.text;
//     if (enteredText.isNotEmpty) {
//       setState(() {
//         displayedTexts.add(enteredText);
//         textFieldController.clear();
//       });
//     }
//   }

//   void editText(int index) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text('Edit Text'),
//           content: TextField(
//             controller: TextEditingController(text: displayedTexts[index]),
//             onChanged: (value) {
//               displayedTexts[index] = value;
//             },
//           ),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               child: Text('Cancel'),
//             ),
//             TextButton(
//               onPressed: () {
//                 Navigator.pop(context);
//                 setState(() {});
//               },
//               child: Text('Save'),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   void deleteText(int index) {
//     showDialog(
//         context: context,
//         builder: ((BuildContext context) {
//           return AlertDialog(
//             title: Text('Are you sure you want to Delete. '),
//             actions: [
//               TextButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                     setState(() {
//                       deleted_item = displayedTexts[index];
//                       displayedTexts.removeAt(index);
//                       _showSnackbar();
//                     });
//                   },
//                   child: Text('Yes')),
//               TextButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   child: Text('No')),
//             ],
//           );
//         }));

//     // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//     //   content: Text(deleted_item),
//     //   backgroundColor: Colors.red,
//     // ));
//   }

//   void _showSnackbar() {
//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//         content: Text(''),
//         action: SnackBarAction(
//           label: 'Undo',
//           onPressed: () {
//             if (deleted_item != '') {
//               setState(() {
//                 textFieldController.text = deleted_item;
//                 deleted_item = '';
//                 displayedTexts.add(textFieldController.text);
//               });
//             }
//           },
//         )));
//   }
// }

// class homepage extends StatefulWidget {
//   const homepage({super.key});

//   @override
//   State<homepage> createState() => _homepageState();
// }

// class _homepageState extends State<homepage> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
