import 'package:flutter/material.dart';
import 'dart:math' as math;

class Header extends StatelessWidget {
  const Header({required this.userName, Key? key}) : super(key: key);
  final userName;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
            margin: const EdgeInsets.all(8.0),
            child: Transform(
              alignment: Alignment.topRight,
              transform: Matrix4.skewY(0.2)..rotateZ(-math.pi / 12.0),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                color: const Color(0xFFE8581C),
                child: Text('Hello $userName'),
              ),
            )),
        Text('$userName Shop')
      ],
    );
  }
}
