import 'package:flutter/material.dart';

import 'loginpage.dart';

class Memo extends StatefulWidget {
  Memo({Key? key}) : super(key: key);

  @override
  State<Memo> createState() => _MemoState();
}

class _MemoState extends State<Memo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            Text(
                'This is where company-wide\nmessages will be displayed\nfor the supervisors\nto see before logging in.'),
            SizedBox(height: 150),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              child: Text('Poke Me! I dare you!'),
            ),
          ],
        ),
      ),
    );
  }
}
