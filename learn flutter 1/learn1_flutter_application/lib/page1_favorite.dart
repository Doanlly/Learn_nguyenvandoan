import 'package:flutter/material.dart';
import 'package:learn1_flutter_application/main.dart';
import 'package:learn1_flutter_application/StyleWidgets/widgetbutton.dart';
class MyFavorite extends StatefulWidget {
  const MyFavorite({Key? key}) : super(key: key);

  @override
  State<MyFavorite> createState() => _MyFavoriteState();
}

class _MyFavoriteState extends State<MyFavorite> {
  @override
  Widget build(BuildContext context) {
    Size  size = MediaQuery.of(context).size;
      return Scaffold(
        appBar: AppBar(
          leading: IconButton(
               icon:const Icon(
              Icons.arrow_back_ios_new,
              size: 35,
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> TutorialHome()));
            },
          ) ,
          actions: [],
          ),
          body: Container(
            child: Row(
              // ignore: prefer_const_constructors
              children: [
                Container(
                  color: Colors.amber,
                  height: 40,
                  width: size.width*0.45,
                  child: Center(
                    child: TextButton(
                      onPressed: (){
                          Navigator.push(context,MaterialPageRoute(builder: (
                            (context) =>   WidgetButton()
                          
                          )));
                      },
                      child: const Text(
                        "Styled Widgets", style: TextStyle(
                          color: Color.fromARGB(255, 221, 248, 145),
                          fontSize: 23,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'RobotoMono'
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
      );
  }
}

