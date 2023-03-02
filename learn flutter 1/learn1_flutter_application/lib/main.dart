import 'package:flutter/material.dart';
import 'package:learn1_flutter_application/page1_favorite.dart';
import 'package:learn1_flutter_application/page2_favorite.dart';
import 'package:learn1_flutter_application/page0.dart';
import 'package:learn1_flutter_application/controller.dart';
void main() {
  runApp(
    MaterialApp(
      
      title: 'Flutter Tutorial',
      theme: ThemeData(
         primarySwatch: Colors.green,
         primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const TutorialHome(),
            debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
    ),
  );
}
int currentindex = 0;
class TutorialHome extends StatefulWidget {
  const TutorialHome({super.key});
  @override
  State<TutorialHome> createState() => _TutorialHomeState();
}



class _TutorialHomeState extends State<TutorialHome> {
  static final List<Widget> _wigdetOption = <Widget>[
    const Page0(),
    const MyFavorite(),
    const Page2(),
  ];
  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for
    // the major Material Components.
    //Size size = MediaQuery.of(context).size;
    
    return Scaffold(
              drawer:  Drawer(
        child:  ListView(
          children: <Widget>[
            const DrawerHeader(
              decoration:  BoxDecoration(
                  color: Colors.orange
              ),
              child:  Text("DRAWER HEADER.."),
            ),
             ListTile(
              title: const Text("Item => 1"),
              onTap: () { 
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  DrawerClass()));
              },
            ),
            ListTile(
              title: Text("Item => 2"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                     MaterialPageRoute(builder: (context) => Page2()));
              },
            ),
          ],
        )
      ),
       body: _wigdetOption[currentindex],
      // floatingActionButton: const FloatingActionButton(
      //   tooltip: 'Add', // used by assistive technologies
      //   onPressed: null,
      //   child: Icon(Icons.add),
      // ),
      backgroundColor: const Color.fromARGB(255, 215, 241, 216),
      bottomNavigationBar: BottomNavigationBar(

          
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon:Icon(Icons.home,size: 28),
              label: "Trang 1"),
               BottomNavigationBarItem(
              icon:Icon(Icons.album_rounded,size: 28),
              label: "Trang 2"),
               BottomNavigationBarItem(
              icon:Icon(Icons.menu,size: 28),
              label: "Trang 3"),
          ],
          currentIndex: currentindex,
          selectedItemColor: Color.fromARGB(118, 158, 73, 1),
          unselectedItemColor: Color.fromRGBO(131, 129, 129, 1),
          onTap: (int index) {
            setState(() {
               currentindex = index;
                  
            });
          }, //tr
        ),
      
     
    );
  }
}

 

//BottomAppbar
// mainAxisSize: MainAxisSize.max,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
// children: [
        //     IconButton(
        //       icon: const Icon(
        //         Icons.home,
        //         size: 35,
        //         ),
        //        onPressed: () {
                
        //          },
        //     ),
        //     IconButton(onPressed: (){
        //        print("Tap 1");
        //     },
        //      icon: const Icon(
        //       Icons.album_rounded
        //       ,color:Colors.red ,
        //         size: 35,)
        //       ),
        //       PopupMenuButton(
        //         icon: const Icon(
        //           Icons.menu,
        //           size: 35,),
        //           itemBuilder: (context) => [
        //              PopupMenuItem(
        //               value: 1,
        //               child: TextButton(
        //                 onPressed: (){
        //                   Navigator.push(
        //                     context,
        //                     MaterialPageRoute(
        //                     builder: (context)=> MyFavorite()
        //                     )
        //                   );
        //                 },
        //                 child: const Text("Facebook")),
        //             ),
        //               PopupMenuItem(
        //               value: 2,
        //               child: TextButton(
                        
        //                 onPressed: () { print("Instagram"); },
        //                 child: const Text("Instagram")),
        //             ),
        //           ],
        //       ),
          
        // ],