// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';


class DisplayUserInfoPage extends StatelessWidget {
  final String username;
  final String password;

  const DisplayUserInfoPage({super.key, required this.username, required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Info'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Username: $username',
              style: const TextStyle(fontSize: 20.0),
            ),
            Text(
              'Password: $password',
              style: const TextStyle(fontSize: 20.0),
            ),
            
          ],
        ),
      ),
    );
  }
}