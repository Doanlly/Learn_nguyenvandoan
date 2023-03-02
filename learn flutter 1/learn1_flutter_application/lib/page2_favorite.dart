import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:learn1_flutter_application/page0.dart';
import "package:learn1_flutter_application/page2_favorite.dart";
import "package:learn1_flutter_application/main.dart";
import "package:learn1_flutter_application/page3/Gav.dart";
class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
 Widget build(BuildContext context) {
    Size  size = MediaQuery.of(context).size;
      return Scaffold(
        appBar: AppBar(
          // leading: IconButton(
          //      icon:Icon(
          //     Icons.arrow_back_ios_new,
          //     size: 35,
          //   ),
          //   onPressed: (){
          //     Navigator.push(context, MaterialPageRoute(builder: (context)=> Page0()));
          //   }, 
          // ) ,
          actions: [],
          ),
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [
                  0.1,
                  0.45,
                  0.55,
                  0.7,
                ],
                colors: [
                  Colors.yellow,
                  Colors.red,
                  Colors.indigo,
                  Colors.teal,
                ],
              )
            ),
            child: (
              Center(
                
                child: Container(
                  height: 75,
                  width: 150,
                                      decoration : const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.bottomCenter,
                         stops: [
                          0.3,
                          0.7,
                          
                        ],
                        colors: [
                        Colors.yellow,
                        Colors.blueGrey,
                       
                      ],
                        
                         ),  
                    ),
                  child: TextButton(

                    onPressed: () { 
                        Navigator.push(context, MaterialPageRoute(builder: (context ) => Gnav()));

                     },
                    child: Text("Click here",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.red 
                    ),
                    ),

                    ),
                ),
                )
            ),
          ),
      );
  }
}