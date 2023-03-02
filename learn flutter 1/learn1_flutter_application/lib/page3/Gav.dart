import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class Gnav extends StatefulWidget {
  const Gnav({Key? key}) : super(key: key);

  @override
  State<Gnav> createState() => _GnavState();
}
int pageIndex = 0;
bool checkpage = true;
class _GnavState extends State<Gnav> {
  @override
  String selectedValue = "Sun";
  Widget build(BuildContext context) {
    Size size  = MediaQuery.of(context).size;
    PageController _pageViewController = PageController(initialPage: 0);
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container( 
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors:[
                Colors.red,
                Colors.yellow,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
               stops: [     
                            0.4,
                            0.8,
                          ],
               ),
          ) ,
          
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: size.width*0.05,top: size.height*0.03),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      
                      child: Text("ExPlore",style: TextStyle( color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
                    ),
                     Align(
                        alignment: Alignment.bottomLeft,
                       child: DropdownButton(
                     
                       items: dropdownItems, value: selectedValue,
                       onChanged: (String? newValue){
                         setState(() {
                         selectedValue = newValue!;
                         print(selectedValue);
                         });
                     
                       },
                       dropdownColor: Colors.orange,
                       ),
                     ),
                   
                  ],
                ),
              ),
              Container(
                height: size.height*0.5,
                //width: size,
                color: Color.fromARGB(255, 252, 251, 250),
                child: Stack(
                  children: [
                    Expanded(
                      child: PageView(
                        onPageChanged: (int index){
                          setState(() {
                            if(index <= 1){
                              checkpage  = true;
                            }
                            else{
                              checkpage = false;
                            }
                            pageIndex = index;
                          });
                        },
                        controller: _pageViewController,
                        children: <Widget>[
                        // Page1(),
                        // Page2(),
                        // Page3(),

                          Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Image.network(
                            'https://ss-ava.saostar.vn/w800/pc/1675305729226/saostar-5op4cxyw8gtomjlg.png', fit: BoxFit.fill,),
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                            elevation: 8,
                            margin: EdgeInsets.all(10),
                          ),
                              Center(
                            child: Text('Page 1'),
                          ),
                          Center(
                            child: Text('Page 2'),
                          ),
                          Center(
                            child: Text('Page 3'),
                          ),
                          Center(
                            child: Text('Page 4'),
                            
                          ),
                                                        Center(
                            child: Text('Page 1'),
                          ),
                          Center(
                            child: Text('Page 2'),
                          ),
                          Center(
                            child: Text('Page 3'),
                          ),
                          Center(
                            child: Text('Page 4'),)
                      ],
                      ),
                    ),
                     Container(
                        alignment:Alignment.center,
                        margin: EdgeInsets.only(top: size.height*0.05),
                       child: SmoothPageIndicator(
                        controller: _pageViewController,
                        count: 8,
                        effect: SlideEffect(
                          dotWidth:12,
                          dotHeight: 12,
                          offset: 10,
                          dotColor: Colors.red,
                          strokeWidth: 2,
                          paintStyle: PaintingStyle.stroke,
                          activeDotColor: Colors.lightGreen),
                        ),
                     ),
                      
                  ],
                ),
              ),
           
            ],
          ),
          
          ),
      ),
      bottomNavigationBar: 
       Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          color: Colors.black,
        ),
         child: Padding(  
           padding:  EdgeInsets.symmetric(horizontal: 5 , vertical: 5),
           child: GNav(
            backgroundColor: Colors.black,
            gap: 10,
            activeColor: Colors.brown,
            tabBackgroundColor: Colors.grey,  // tao 1 box hinh tron co mau tuong ung bao quang Button
            iconSize: 30,
            color: Colors.blue,
            duration: Duration( //  thoi gian doi cua click
              microseconds: 100,
            ),
            haptic: true ,
            mainAxisAlignment: MainAxisAlignment.center,
            padding: EdgeInsets.all(20),
            onTabChange:(index){
              print(index);
            },
            hoverColor: Colors.green, // mau noi sau khi click vao buttomappbar,  hien ram 0.01 ms
            tabs: [
            GButton(icon: Icons.home,text: "HOME", iconColor: Colors.white, iconSize: 30,),
            GButton(icon: Icons.favorite_border,text: "FAVORITE", iconColor: Colors.white, iconSize: 30,),
            GButton(icon: Icons.search, text : "SEARCH", iconColor: Colors.white, iconSize: 30,),
            GButton(icon: Icons.face_retouching_natural,text: "ACCOUNT", iconColor: Colors.white, iconSize: 30,),
      ]
      ),
         ),
       ),
    );
  }
}
List<DropdownMenuItem<String>> get dropdownItems{
  List<DropdownMenuItem<String>> menuItens = [
    DropdownMenuItem(child: Text("Hệ Mặt trời",style: TextStyle(fontSize: 25,color: Colors.white60),),value: "Sun"),
    DropdownMenuItem(child: Text("Hệ Sinh thái",style: TextStyle(fontSize: 25,color: Colors.white60),),value: "Sinhthai"),
    DropdownMenuItem(child: Text("Hệ người",style: TextStyle(fontSize: 25,color: Colors.white60),),value: "People"),
    DropdownMenuItem(child: Text("Hệ Ngân Hà",style: TextStyle(fontSize: 25,color: Colors.white60),),value: "Galaxy"),
  ];
  return menuItens;
}