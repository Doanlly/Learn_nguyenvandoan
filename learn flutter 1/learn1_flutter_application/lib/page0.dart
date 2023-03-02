import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import "package:learn1_flutter_application/main.dart";
class Page0 extends StatefulWidget {
  const Page0({Key? key}) : super(key: key);

  @override
  State<Page0> createState() => _Page0State();
}
class Choice {  
  Choice({required this.title, required this.icon, required this.colorr});  
  final String title;  
  final IconData icon;  
  final Color colorr;
}  
List<Choice> choices = <Choice>[  
   Choice(title: 'Wiget', icon: Icons.add_moderator_sharp ,colorr: Colors.amber ),  
    Choice(title: 'Contact', icon: Icons.contacts,colorr: Colors.yellow ),  
    Choice(title: 'Map', icon: Icons.map,colorr: Colors.green ),  
    Choice(title: 'Phone', icon: Icons.phone,colorr: const Color.fromARGB(255, 54, 143, 244)  ),  
    Choice(title: 'Camera', icon: Icons.camera_alt,colorr:const Color.fromARGB(255, 7, 123, 255) ),  
  Choice(title: 'Setting', icon: Icons.settings,colorr: const Color.fromARGB(255, 7, 238, 255) ),  
     Choice(title: 'Album', icon: Icons.photo_album,colorr: const Color.fromARGB(255, 77, 106, 187) ),  
  Choice(title: 'WiFi', icon: Icons.wifi,colorr: Colors.amber ),  
]; 
class _Page0State extends State<Page0> {
  @override
  Widget build(BuildContext context) {
    Size size  = MediaQuery.of(context).size;
      return Scaffold(
        appBar: AppBar(
        leading: const IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title:  const Text('Ôn Tập'),
        actions: const [
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
         body:  Center(
        child: Column(
          children: [
            const SizedBox(height: 2,),
            const Text('ÔN TẬP', style: TextStyle(color:Colors.redAccent,fontSize: 20, fontWeight: FontWeight.bold)
            ),
            GestureDetector(
              onTap: (){
                // ignore: avoid_print
                print("GestureDetector: On tap");
              },
              child: Container(
                height: 30,
                width: 250,
                padding: const EdgeInsets.all(5.0),
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.lightGreen[100],
                ),
                child:const Center(
                  child: Text("GestureDetector: On tap",
                    style: TextStyle(
                      color: Colors.blue, 
                      fontSize: 20, 
                      fontWeight: FontWeight.bold),
                      )
                    ) ,
              ),

            )
            ,
            Container(
              //color: const Color.fromARGB(255, 155, 224, 27),
              height:size.height*0.7 ,
              width: size.width*0.95,
              decoration: BoxDecoration(
                color:  Color.fromARGB(255, 241, 247, 220),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  width: 4,
                  color: Colors.blueAccent)
              ),
              child:  SingleChildScrollView(
                child: Column(
                  children: List.generate(choices.length, (index) {  
                  return Center(  
                    child: SelectCard(
                      choice: choices[index]
                    ),  
                  );  
                }
                )
                ),
                
              // crossAxisCount: Nó được sử dụng để chỉ định số lượng cột trong chế độ xem lưới.
              // crossAxisSpacing: Nó được sử dụng để chỉ định số lượng pixel giữa mỗi widget con được liệt kê trong trục chéo.
              // mainAxisSpacing: Nó được sử dụng để chỉ định số lượng pixel giữa mỗi widget con được liệt kê trong trục chính.
              // padding (EdgeInsetsGeometry): Nó được sử dụng để chỉ định không gian xung quanh toàn bộ danh sách các widget.
                /**child:GridView.count(  
                crossAxisCount: 1,  
                crossAxisSpacing: 100.0,  
                mainAxisSpacing: 0.0,  
                children: List.generate(choices.length, (index) {  
                  return Center(  
                    child: SelectCard(choice: choices[index]),  
                  );  
                }  
                ) 
              ) ,**/
            )
            )
            ]
        ),
      ),
      );
  }
}
class SelectCard extends StatelessWidget {  
  const SelectCard({Key? key, required this.choice}) : super(key: key);  
  final Choice choice;  
  
  @override  
  Widget build(BuildContext context) {  
  
    Size size = MediaQuery.of(context).size;
    return Container(
        height: 80,
        width: double.infinity,  
        alignment: Alignment.center,
        color: choice.colorr,  
        child: SizedBox(
          height: 75,
          width: size.width*0.3,
          child: Row(  
            //crossAxisAlignment: CrossAxisAlignment.center,  
            children: <Widget>[  
             
                Icon(
                  choice.icon, 
                  size:50.0, 
                  color:  const TextStyle(color:Color.fromARGB(255, 2, 112, 12),
                                    fontSize: 20, fontWeight: FontWeight.bold).color),  
              Text(choice.title, style: const TextStyle(color:Color.fromARGB(255, 94, 3, 3),fontSize: 20, fontWeight: FontWeight.bold)
              ),
                
            ]  
          ),
        )  
    ); 
    }
    }