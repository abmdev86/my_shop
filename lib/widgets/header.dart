import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class Header extends StatelessWidget {
  const Header({required this.userName, Key? key}) : super(key: key);
  final String userName;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Row(
        children: <Widget>[
          Banner(
            message: '$userName Choose an action: ',
            location: BannerLocation.topStart,

          )
        ],
      ),
    );
  }
}
