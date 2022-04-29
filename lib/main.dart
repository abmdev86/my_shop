import 'package:flutter/material.dart';
import 'package:my_shop/Header/Header.dart';

void main() {
  runApp(const MyShopApp(
    userName: "Auroiah",
  ));
}

class MyShopApp extends StatelessWidget {
  const MyShopApp({required this.userName, Key? key}) : super(key: key);

  final userName;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: userName + ' Shop',
      home: Scaffold(
        appBar: AppBar(
          title: Text("$userName's Shop"),
        ),
        body: Column(
          children: [

            Header(userName: userName),
          ],
        ),
      ),
    );
  }
}
