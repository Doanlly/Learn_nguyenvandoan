import 'package:flutter/material.dart';
//https://stackoverflow.com/questions/51635949/how-to-achieve-this-design-of-dropdown-in-flutter
class WidgetButton extends StatefulWidget {
  const WidgetButton({Key? key}) : super(key: key);

  @override
  State<WidgetButton> createState() => _WidgetButtonState();
}

class _WidgetButtonState extends State<WidgetButton> {
int _count = 0;
void _incrementCounter(){

  setState((){
    _count++;
  });
}
void _decrementCounter(){
  setState((){
    _count--;
    if(_count< 0){
      _count = 0;
    }
  });
}
  void _restart() {
    setState(() {
      _count = 0;
    });
  }
bool values = false;
String value = "";
String password = "";
bool isfavorite = true;
  @override
  Widget build(BuildContext context) {
    String dropdownvalue = 'Item 1';  
      var items1 = [    
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  final Map<String,IconData> items = Map.fromIterables(
    ['Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',],
    [
      
      Icons.favorite,
      
   
    
      Icons.favorite,
 
Icons.filter_1, Icons.filter_2, Icons.filter_3
     
    ]
  );

  List<Icon> icons =[
    Icon(
      Icons.favorite,
      color: Colors.pink,
      size: 24.0,
    ),
    Icon(Icons.face,
      color: Colors.pink,
      size: 24.0,),
          Icon(
      Icons.favorite,
      color: Colors.pink,
      size: 24.0,
    ),
        Icon(
      Icons.favorite,
      color: Colors.pink,
      size: 24.0,
    ),
        Icon(
      Icons.favorite,
      color: Colors.pink,
      size: 24.0,
    ),

  ] ;
  List<String> selectedItems = [];
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }
    Size  size = MediaQuery.of(context).size;
      return Scaffold(
      // Drawer:
      //là 1 màn hình bên vô hình, thường chứa các mục menu và nó chiếm khoảng môt nửa màn hình khi hiển thị
      
        appBar: AppBar(actions: []),
        body: Center(
        
          child: Container(alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                // height: size.height,
                // width: size.width,
                color: Colors.white,
                //flatbutton = text button
                //               RaisedButton → ElevatedButton
                // OutlineButton → OutlinedButton
                // ButtonTheme → TextButtonTheme, ElevatedButtonTheme, OutlineButtonTheme
                child: Column(
                  children: [
      
                    ElevatedButton(child: const Text("ElevatedButton",style: TextStyle(
                      color: Color.fromARGB(115, 8, 47, 131),
                      fontSize: 30
                    ),
                    ),
                    onPressed: (){
                      
                    },
                    ),
                    Container(
                      child: Row(
                        children: [
                          ElevatedButton(onPressed: _decrementCounter, child: 
                            const Text("-"
                              ,style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                          ),
                              )
                            ),
                          const SizedBox(width: 30,),
                          Text("$_count",style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),),
                          const SizedBox(width: 30,),
                          ElevatedButton(onPressed: _incrementCounter, 
                            child: const Text("+"
                            ,style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),)
                          ),
                          const SizedBox(width: 10,),                           
                      OutlinedButton(

                              style: OutlinedButton.styleFrom(
                               backgroundColor: Color.fromARGB(255, 54, 3, 3),
                                primary: Colors.white,
                                side: BorderSide(color: Colors.red, width: 3),
                            ),
                            onPressed: _restart, child: Column(
                      children: const [
                        Text("RESTART"),
                        Icon(Icons.lock_reset_rounded)

                        ],
                      )
                    ),
                    Text("<--OutlineButton")
                        ],
                        
                      ),
                    ),
                   DropdownButtonHideUnderline(
                     child: Container(
                      height: 40,
                      width: size.width,
                      //color: Colors.lightGreen,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.lightGreen,
                      ),
                       child: DropdownButton(
                         isExpanded: true,
                         hint: const Align(alignment: AlignmentDirectional.center,
                          child: Text("DropdownBtn,hideunder,menuItem",
                             style: TextStyle(
                           fontSize: 23,
                           fontWeight: FontWeight.bold,
                           color:Color.fromARGB(255, 241, 247, 241),// Theme.of(context).hintColor,
                         ),
                         )
                         ),
                         items: items.keys.map((item){
                           return DropdownMenuItem<String>(
                             value: item,

                             enabled: false,
                               child: StatefulBuilder(
                                 builder: (context,menuSetState){
                                   final _isSelected = selectedItems.contains(item);
                                   return Container(
                                    color: Colors.amber,
                                     child: Material(
                                      color: Colors.transparent,
                                        //color: Color.fromARGB(255, 4, 117, 38),
                                       child: InkWell(
                                        highlightColor: Colors.purple,
                                        splashColor: Colors.pink,
                                        borderRadius:  BorderRadius.circular(20),
                                         onTap: (){
                                           _isSelected
                                                       ? selectedItems.remove(item)
                                                       :selectedItems.add(item);
                                            setState(() {
                                              print("${items[item].runtimeType}");
                                              print("$item");
                                            });
                                             menuSetState(() {});
                                         },
                                         child: Container(
                                          //color: Color.fromARGB(255, 200, 231, 201).withOpacity(0.5), 
                                           height: double.infinity,
                                           padding:EdgeInsets.symmetric(horizontal: 16.0) ,
                                           child: Row(
                                             children: [
                                             _isSelected
                                                     ? const Icon(Icons.check_box_outlined)
                                                     : const Icon(Icons.check_box_outline_blank),
                                             const SizedBox(width: 16),
                                             Text(
                                               item,
                                               style: const TextStyle(
                                                 fontSize: 20,
                                               ),
                                             ),
                                             Icon(items[item],color: Colors.black,),
                                           ],
                                           ),
                                         ),
                                       ),
                                     ),
                                   ) ; 
                                 }
                               )
                             
                             );
                         }
                         ).toList(),
                         onChanged: (value) {},
                         value: selectedItems.isEmpty ? null : selectedItems.last,
                         
                         menuMaxHeight: 1000,
                         selectedItemBuilder: (context){
                            return items.keys.map((item) {
                             return Container(
                               alignment: AlignmentDirectional.center,
                               padding: const EdgeInsets.symmetric(horizontal: 16.0),
                               child: Row(
                                 children: [
                                   Text(
                                     selectedItems.join(', '),
                                     style: const TextStyle(
                                       fontSize: 20,
                                        color: Colors.blue,
                                       //overflow: TextOverflow.ellipsis,
                                     ),
                                     maxLines: 5,
                                   ),
                                   //item[items],
                                  
                                 ],
                               ),
                             );
                           },
                         ).toList();
                       },
                   ),
                     )
                    )
                   ,
                   Row(
                     children: [
                       Container(
                        color: Colors.amber ,
                         child: IconButton(
                          onPressed: (){
                              setState(() {
                                isfavorite = !isfavorite;
                                if(isfavorite){
                                  print("Thích");
                                }else{print("Không thích");}
                              });

                              //  final snackBar = SnackBar(
                              //   content: Text('Yay! A SnackBar!',style: TextStyle(fontSize: 30),),
                              //   action: SnackBarAction(
                                  
                              //     label: 'Undo',
                              //     textColor: Colors.blue,
                              //     disabledTextColor: Colors.amber,
                              //     onPressed: () {
                              //       // Some code to undo the change.
                              //     },
                              //   ),
                              //   );

                              //   // Find the ScaffoldMessenger in the widget tree
                              //   // and use it to show a SnackBar.
                              //   ScaffoldMessenger.of(context).showSnackBar(snackBar);
                              final snackBar = SnackBar(
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                content: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 205, 201, 216),
                                      border: Border.all(color: Colors.green, width: 3),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Color(0x19000000),
                                          spreadRadius: 2.0,
                                          blurRadius: 8.0,
                                          offset: Offset(2, 4),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.favorite, color: Color.fromARGB(255, 230, 24, 34) ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 8.0),
                                          child: Text('Yay! A SnackBar!\nYou did great!', style: TextStyle(color: Color.fromARGB(255, 109, 5, 10),fontSize: 25,)),
                                        ),
                                        const Spacer(),
                                        TextButton(onPressed: () => debugPrint("Undid"), child: Text("Undo",style: TextStyle(fontSize: 30,color: Colors.blue),))
                                      ],
                                    )
                                ),
                              );
                              ScaffoldMessenger.of(context).showSnackBar(snackBar);

                          }, 
                          icon:Icon(
                            isfavorite? Icons.favorite : Icons.favorite_border,
                            color: Colors.red,size: 30,)
                          ),
                       ),
                        IconButton(
                    onPressed: (){
                       setState(() {
                              isfavorite = !isfavorite;
                              if(isfavorite){
                                print("Thích");
                              }else{print("Không thích");}
                            });
                    }, 
                    icon:Icon(isfavorite? Icons.favorite:Icons.favorite_border_outlined,color: Colors.red,size: 30,)
                    )
                      ,
                     ],
                   ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child:TextField(
                            /// là thàn phần đầu vào chứa dữ liệu và chữ số : tên, mk, địa chỉ,..
                            decoration: InputDecoration(
                              border:OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                              labelText:"Tên người dùng",
                              hintText:"Nhập tên của bạn"
                            ),
                            onChanged: (text){
                              value = text;
                            },
                          ),
                          
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child:TextField(
                            /// là thàn phần đầu vào chứa dữ liệu và chữ số : tên, mk, địa chỉ,..
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),

                                borderSide: BorderSide(color: Colors.red,style: BorderStyle.solid,width: 3),
                                ),
                              labelText:"Mật Khẩu",
                              hintText:"Nhập mật khẩu đi bạn?"
                            ),
                            onChanged: (text){
                              password =  text;
                            },
                          ),
                          
                        ),
                      ),
                      ElevatedButton(
                        
                        onPressed: (){
                          //showDialog: hộp thoại cảnh b
                          print("$value  password: $password");
                          // return showDialog(context: context,
                          //  builder: (context){
                          //   return AlertDialog(
                          //     title: const Text("Nội dung nhập:",style:TextStyle(fontSize: 30),),
                          //     content: Text(value),
                          //     actions: <Widget>[
                          //       ElevatedButton(
                          //         onPressed: (){
                          //           Navigator.of(context).pop();
                          //         },style: const TextStyle(fontSize: 30), 
                          //         child: const Text("OK"),
                          //         ),
                          //     ],
                          //   );
                          //  }
                          //  );
                        }, 
                        child: Text("Đăng nhập", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
                        ),
                        
                        SizedBox(
                width: size.width,
                height: 200,
                child: Column(
                  children: [
                    Text(
                      'Algorithms',
                      style: TextStyle(
                          color: Colors.greenAccent[400],
                          fontSize: 30), //TextStyle
                    ), //Text
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 10,
                        ), //SizedBox
                        Text(
                          'Library Implementation : ',
                          style: TextStyle(fontSize: 17.0),
                        ), //Text
                        SizedBox(width: 10), //SizedBox
                        /** Checkbox Widget **/
                        Checkbox(
                         value: this.values,

                       onChanged: (bool? value)   {
                         setState(() {
                              values =value! ;
                              if(values){
                                print("Tích");
                              }else{
                                print("Không tích");
                              }
                            });
                         },
                     
                        ), //Checkbox
                      ], //<Widget>[]
                    ), //Row
                  ],
                ), //Column
              ), //SizedBox
                      // Drawer:
                      //là 1 màn hình bên vô hình, thường chứa các mục menu và nó chiếm khoảng môt nửa màn hình khi hiển thị
                    ],

                ),
              )
            ],
          ),
        )
      ),
);
  }
}
