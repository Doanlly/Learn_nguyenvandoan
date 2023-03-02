

import "dart:math";

// Một chương trình Dart cơ bản:
void printInteger(int numb){
	print("Số tự nhiên thứ 1 $numb" );
} 



void main() {
	int numb = 3;
	int intz = 10;
	printInteger(1);
	for (int i = 0;i<=numb;i++){
		print("Số tự nhiên thứ $i cộng thêm 2 đon vị sau mỗi bước lặp là:${intz + i} ");

	}
	//TÌm hiểu một chút về cấu trúc, các biến cơ bản trong Dart
	//void-- Một kiểu đặc biệt cho biết một giá trị không bao giờ được sử dụng. 
	//Các hàm như printInteger()và main()không trả về giá trị một cách rõ ràng có void kiểu trả về.
	//$variableName(hoặc )${expression} : Nội suy chuỗi
	//main() --Chức năng cấp cao nhất , bắt buộc , đặc biệt, nơi bắt đầu thực thi ứng dụng. 
	//var -- Một cách để khai báo một biến mà không chỉ định kiểu của nó. Kiểu của biến này ( int) được xác định bởi giá trị ban đầu của nó ( 42).
	//Mọi thứ trong một biến là một đối tượng, đối tượng là một thể hiện(intance) của một lớp . Số chẵn, hàm và null là đối tượng. Ngoại trừ null, tất cả các đối tượng kế thừa từ Object class.\
	//nễu 1 biến ko thể cho là null thì cần dấu ! ở cuối kiểu của nó và ngược lại là dấu ?
	// List <int> (danh sách các số nguyên) hoặc List <Object> (danh sách các đối tượng thuộc bất kỳ kiểu nào).
	// Không giống như Java, Dart không có các từ khóa public, protected và private. => có dấu '_' là riêng tư(private)
	//==============--------------------======================---------------------==================--------------------=============
	//----------------=================--------------------========================-----------------------===============-------------
	// Variables
	//Tạo một biến và khởi chạy nó-> biến dưới chứa lưu trữ tham chiếu là String : "Bob"
	var name0 = "Bob";
	//có thể thay đổi kiểu như trên bằng cách sự dụng 1 loại Object type.Ex:
	Object name1 = "Doàndz";
	print("Đối tượng có đầu ra là: $name1");
	print("Biến có đầu ra là: $name0");

	//1 cách khai báo rõ ràng:
	String name = "doàn";
	print('giá trị của biến name là : ${name.runtimeType}');
	dynamic c ;
	print("C = $c");
	c = 4;
	print("Giá trị của c là : $c và có kiểu là : ${c.runtimeType}");
	//Default value: giá trị mặc định:
	//Các biến chưa được khởi tạo có GT ban đầu la null kể cả kiểu số vì nó là __> Object
	int? lineC;
	assert(lineC == null);
	print(lineC);
	//còn không thì ph khơi tạo giá trị trc:
	int lineCC = 0;
	print(lineCC);
	//chỉ cần gán giá trị trc khi nó sử dụng cũng đc
	//Late variables
	//Tác dụng: Khai báo 1 biến không thế nullable đc khởi tạo sau khi khai báo,
	//Khởi tạo biến 1 cahs chậm chạp
	late String mota;
	mota = 'Feijoada!';
	print(mota);
	//Biến có thể không cần thiết và việc khởi tạo nó rất tốn kém.

	// Bạn đang khởi tạo một biến phiên bản và trình khởi tạo của nó cần quyền truy cập vào biến này.
	// This is the program's only call to readThermometer().
	//late String temperature = readThermometer(); // Lazily initialized
	//final and const-> không thay đổi biến const là hằng số thời gian biên dịch compile-time constaint
	final doan = "Đoàn";
	final String nickname = "Jockbiz";
	//doan = 1; -> sẽ báo lỗi chỉ đc đặt 1 lần
	const bar = 1000000; //Đ vị áp suất (dynes/cm2)
	const double atm = 1.01325 * bar; // kk tiêu chuâz
	print("bar = $bar and atm =  $atm");
	//tạo gtrij ko đổi,khai báo hàm tạo giá trị ko đỏi
	var foo = const [];
	final barz = const []; //baz = 1 --> error
	const baz = []; 
	foo = [1,2,3];
	const Object i = 3; // i là 1 đối tượng với giá trị int là 3.
	const list = [i as int]; // Use a typecast.
	const map = {if (i is int) i: 'int'}; 
	const set = {if (list is List<int>) ...list}; // truyền.

	print("i = $i, list = $list, map = $map, set = $set");
	//các loại cài sẵn
	// Numbers (int, double)Strings (String),Booleans (bool),Lists (List, also known as arrays),Sets (Set)Maps (Map), Runes (Runes; often replaced by the characters API), Symbols (Symbol) ,The value null (Null)
	var a = 1;
	var b1 = 0xDEADBEFF;
	var b2 =1.1; //8e5;-> int
	num b3 = 1;
	print("type ${a.runtimeType} and b1: ${b1.runtimeType} and b2 = ${b2.runtimeType} and b3 = ${b3.runtimeType}" );
	b3 += 0.5;
	print("B3 = $b3 có type là :  ${b3.runtimeType}");

	//Biến 1 chuỗi thanh 1 số và ngược lại;
	print("---------------------//Biến 1 chuỗi thanh 1 số và ngược lại;-----------------");
	// String -> int
	var one = int.parse('1');
	assert(one == 1);
	print("one = $one and type : ${one.runtimeType}");
	// String -> double
	var onePointOne = double.parse('1.1');
	assert(onePointOne == 1.1);
	print("onePointOne = $onePointOne and type:${onePointOne.runtimeType}");
	// int -> String
	String oneAsString = 1.toString();
	assert(oneAsString == '1');
	print("oneAsString = $oneAsString and type : ${oneAsString.runtimeType}");
	// double -> String
	String piAsString = 3.14159.toStringAsFixed(2);
	assert(piAsString == '3.14');
	print("piAsString = $piAsString and type : ${piAsString.runtimeType}");
	print("====     =====       =====      =====    =======    =====  =====");
	assert((3 << 1) == 6); // 0011 << 1 == 0110
	assert((3 | 4) == 7); // 0011 | 0100 == 0111
	assert((3 & 4) == 0); // 0011 & 0100 == 0000
	var a1= "bien nay dong so 110 de thu kieu String ";
	print (a1);
	var s = 'Nội suy chuỗi';

	assert('Dart có $s khá oke.' ==
	    'Dart has string interpolation, '
	        'test1',"test2");
	var a2 = """Chuỗi này có khs nhiều dòng
				Dòng 2
				DÒng 3
	""";
	print(a2);
	var s1 = r'Trong một chuỗi thô, thậm chí không \n được xử lý đặc biệt.';
	print(s1);

	//kiểm tra chuỗi trống:
	var fullname = '2';
	assert(fullname.isEmpty);
	//kiểm tra 1 chuỗi  có 0 hay k
	var zero  = 0;
	assert(zero <= 0);
	//kiểm tra null
	var nunn ;
	assert(nunn == null);
	print("Dòng 135");
	print(fullname);
	print(zero);
	print(nunn);
	// list hay dic trong dart
	var list1  = [1,2,3];
	print(list1);
	var list2 = ["1","2","3"];
	print("list2 = $list2 and type : ${list2.runtimeType}");
	assert(list2.length == 3);
	print("${list2.length}");
	print( "phan tu thu 2 là : ${list2[1]}");
	var consantlisst = const ["ddsdsd"];

	// Tạo một tập hợp trống :
	var namez = <String>{};
	namez.add("one");
	print("name : $name");
	var gifts = {
		1 :"dict1",
		2 :"dict2",
		3 :"dict3",
	};
	print(" gifts[1] = $gifts[1], gifts[2] = $gifts[2]");
	// TỪ điển (map với khóa là 1 type kiểu int, giá trị là 1 kiểu String)
	var mapcontructor = Map<int,String>();
	mapcontructor[0] = "Đoàn";
	mapcontructor[1] = "Đaoz";
	mapcontructor[5] = "Liza";
	print("mapcontructor = $mapcontructor and ${mapcontructor.runtimeType}");
	//Ngược lại
	var dictstringint = Map<String,int>();
	dictstringint["Helo"] = 1;
	dictstringint["Doàn"] = 37;
	dictstringint['zz']  = 22;
	print("dictstringint = $dictstringint  and type is : ${dictstringint.runtimeType}");
	var newkey = {"doz" : "liz"};
	newkey["dozz"] = "zzdo";
	assert(newkey["doz"] == "dđ");
	print("newkey = $newkey and length =  ${newkey.length}" );
	//const : fina zzz = const{}
	print(" \u{1f606}  \u2665  \u2662 \u2661");
	var test  = "hi chàdsDssz";
	print("Chào bạn: ${test.substring(test.length -1)}");
	var test1  = "DĐoan đâ";
	//print("helo ban : ${test1.characters.last}\n");
	String say(String from, String msg, [String? device]) {
	  var result = '$from rồi $msg';
	  if (device != null) {
	    result = '$result  sẽ $device';
	  }
	  return result;
	}
	print(say("Chào","Chào lại","Oke"));
	//gọi hàm không có tham số : 
	assert(say('Bob', 'Howdy') == 'Bob says Howdy');  //vs tham số thứ 3...say(, ,'tham số 3') == '...sẽ ....'

	void enableFlags({bool bold = false, bool hidden = false}) 
	{
		if (bold == true){
			print("zz");
		}
	}

	// bold will be true; hidden will be false.
	enableFlags(bold: true);

	//chuyển list hoặc máp làm giá trị mặc định
	void todoz ({List<int> lisz = const [1,2,3,4,5],
		Map<String,String> gifz  = const {
			"Một" :"One",
			"Hai" :"Two",
			"Ba" : "Three"
		} 
		})
	{
		print("Lisz = $lisz");
		print("gifz = $gifz");
	}
	todoz();
	//Đặt các function như first-class
	void printelement(a){
		print(a);
	}
	var listelement =  [1,2,3,4];
	listelement.forEach(printelement);
	//Gắn 1 hàm cho một biến: chẳng hạn như:
	var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!';
	assert(loudify('hello') == '!!! HELLO !!!');
	print(loudify("chàoz"));

	const listt = ['dsdsd1','dsd2','sdsds3','4dsds','5đsd'];
	list.forEach((item){
		print("${list1.indexOf(item)} :$item");
	});
	
	//khởi tạo 1 mảng cố định
	int iz = 5;
	iz ++;
	print("aaaaaaaaaaaa $iz");
	print(iz==5);
	print(iz==6);
	print(iz<= 9);
	bool f  = true;
	bool oz = false;
	print(" 1 trong 2 ${f|oz}");//or
	print(oz&f);
	print(!f);

	var aa = 2;
	var aq = 3;
	//điều kiện ? bt 1 : biểu thức 2
	print((aa>aq)? aa : aq );
	//chuyển kiểu : as
	//đặt kiểu : is
	//kiểm tra kiểu: !is
	// ôn điều kiện if else:
	int ss = 11;
	if (ss %2 ==0){print("$ss là số chẵn");}
	else print("$ss là số lẻ");
	print("ss^2  = ${ss*ss}");
	(ss%2 ==0)?print("chẵn $ss") : print("LẺ $ss");
	for(int i =0 ; i<3; i++){
		print(" căn $i = ${(sqrt(i)).floor()} do đã làm tròn bới Floor()");
		(i<2) ? print(i):print("1");
	}
	// làm 1 hàm kiểm tra số nguyên tố:

	void primez(prime){
		bool checkz =true;
		if(prime < 2){
			print("$prime không là số nguyên tố ");
			}
		else{
			var sqrtprime = sqrt(prime);
			for(var j = 2 ;j <= sqrtprime ;j++){
				if (prime % j == 0){
					checkz = false;
					break;
				}
			}
			}
		if(checkz == true){
			print(prime);
		}
		else{
			print("$prime không là số nguyên tố ");
		}
	}
	//prime(9);
	for(var ff = 0 ; ff < 20; ff++){
		primez(ff);
	}
	List<String> list3 = ["A","B","C"];
	print("In ra tất cả các phần tử trong $list3 là: ");
	for(final  i in list3){
		print(i);
	}
	// đặt tên hàm đầu tiên ph đặt kiểu trả về của hàm đầu tiên
	bool checkevn(int ner){
		return (ner%2) == 0;
	}
	print("3 là số lẻ: ${checkevn(3)}");
	bool checkevn1(int n)=> (n%2) ==0;
	bool lasoChan(int n)=> checkevn == true;
	print("2 là số chẵn: ${checkevn1(2)}");
	print(lasoChan(3));
	//Tinh tong tu 1 den n
	var sum = 0;
	for(int i = 0;i< 5;i++){
		sum = sum+i;
	}
	print(sum);
	//tinh giai thua
	int  giaithua(int n){
		if (n==0) return 1;
		else return n*giaithua(n-1);
		
		
	}
	print("Giai thua cua 4 là : ${giaithua(4)}");

	//# ký hiệu
	//Functions
	bool isNoble(int atomicNumber) => atomicNumber != null; // hàm với 1 dòng lệnh => nghĩa là return
	//enableFlags(bold: true, hidden: false) có thể gọi hàm đặt giá trị các đối số để đặt tên
	//const Scrollbar({super.key, required Widget child}); tham só bắt buộc người dùng nhạp vào
	String say1(String from, String msg, [String? device]) {
	  var result = '$from says $msg';
	  if (device != null) {
	    result = '$result with a $device';
	  }
	  return result;
	}
	print(say1("CHào","Đoàn","đì vai"));

	String say2(String from, String msg, [String device = 'carrier pigeon']) {
		var result = '$from says $msg with a $device';
		return result;
	}

	assert(say2('Bob', 'Howdy') == 'Bob says Howdy with a carrier pigeon');
	print(say2('Bob', 'Howdy'));
	//Bạn cũng có thể chuyển danh sách hoặc bản đồ làm giá trị mặc định. Ví dụ sau định nghĩa một hàm, doStuff (), 
	//chỉ định một danh sách mặc định cho tham số danh sách và một bản đồ mặc định cho tham số quà tặng.
	void doStuff(
    {List<int> list = const [1, 2, 3],
    Map<String, String> gifts = const {
      'first': 'paper',
      'second': 'cotton',
      'third': 'leather'
    }}) {
		print('list:  $list');
		print('gifts: $gifts');
	}
	doStuff();
	//có thể truyền một hàm dưới dạng tham số cho một hàm khác
	void laythamsokhac(int elm){
		print(elm);
	}
	var lit1 = [1,2,3];
	lit1.forEach(laythamsokhac);

	//dụ sau anh ta định nghĩa một hàm ẩn danh với một tham số không định kiểu, item. 
	//Hàm, được gọi cho mỗi mục trong danh sách, in một chuỗi bao gồm giá trị tại chỉ mục được chỉ định.
	const listt11 = ['apples', 'bananas', 'oranges'];
	listt11.forEach((item) {
  	print('${listt11.indexOf(item)}: $item');
});

	//Các hàm có thể đóng trên các biến được xác định trong các phạm vi xung quanh. 
	//Trong ví dụ sau, makeAdder () nắm bắt biến addBy. Bất cứ nơi nào hàm trả về đi đến đâu, nó sẽ ghi nhớ addBy
	Function makeAdder(int addBy) {
		return (int i) => addBy + i;
	}

		
	// Create a function that adds 2.
	var add2 = makeAdder(2);

	// Create a function that adds 4.
	var add4 = makeAdder(4);

	assert(add2(3) == 5);
	assert(add4(3) == 7);
	print("giá trị tại 1 là ${makeAdder(1)} +++ ${add2}");
	//lam lai cach truyrn tham só 
	void Hamtruyenthamso([int? a, int? b, int? c]){  // Tham số tùy chọn phải để sau tham số bắt buộc
		print("Tham số trả về là: a = $a, b = $b, c = $c");
	}
	void Hamtruyenthamso1({int a = 0, int b = 0, int c = 0}){  // Tham số tùy chọn phải để sau tham số bắt buộc
		print("Tham số trả về là: a = $a, b = $b, c = $c");
	}
	Hamtruyenthamso(1,2,3);
	Hamtruyenthamso(1);
	Hamtruyenthamso1(b: 1,c: 10);
}