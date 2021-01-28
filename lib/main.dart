import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BytebankApp());
}

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(15.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: Image.asset('images/bytebank_logo.png'),
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20),
                  color: Colors.green),
              height: 100,
              width: 150,
              child: Column(
                children: [
                  Icon(Icons.people),
                  Text('Contatos'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
