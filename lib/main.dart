import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_shop/modules/user_home/user_home.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyShopApp());
}

final ThemeData kIOSTheme = ThemeData(
  primarySwatch: Colors.amber,
  primaryColor: Colors.black,
);

// Android ThemeData
final ThemeData kDefaultTheme = ThemeData(
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
      .copyWith(secondary: Colors.amberAccent[400]),
);

class MyShopApp extends StatelessWidget {
  const MyShopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My Shop App',
        theme: defaultTargetPlatform == TargetPlatform.iOS
            ? kIOSTheme
            : kDefaultTheme,
        home: const UserHome());
  }
}
