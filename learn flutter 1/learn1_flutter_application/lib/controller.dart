import 'package:flutter/material.dart';
import 'package:learn1_flutter_application/main.dart';
import 'package:learn1_flutter_application/page1_favorite.dart';
import 'package:learn1_flutter_application/page2_favorite.dart';
import 'package:learn1_flutter_application/page0.dart';
int currentindex = 0;
class DrawerClass extends StatefulWidget {
  const DrawerClass({Key? key}) : super(key: key);

  @override
  State<DrawerClass> createState() => _DrawerClassState();
}

class _DrawerClassState extends State<DrawerClass> {
   static final List<Widget> _wigdetOption = <Widget>[
    const Page0(),
    const MyFavorite(),
    const Page2(),
  ];
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(),
        body: Container(
          color: Colors.amber,
        ),
      );
  }
}