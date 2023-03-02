import "package:flutter/material.dart";
class C extends StatefulWidget {
  const C({Key? key}) : super(key: key);

  @override
  State<C> createState() => _CState();
}

class _CState extends State<C> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Card(
        semanticContainer: true,
         clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Image.network(
          'https://placeimg.com/640/480/any', fit: BoxFit.fill,),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        margin: EdgeInsets.all(10),
      ),
    );
  }
}


