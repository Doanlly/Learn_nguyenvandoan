// Biến là vùng chứa để lưu trữ dữ liệu.
// có nhiều cách để khai báo 1 biến trong Dart, điển hình là var 
//Ví dụ
void main(){ // tra ve khoang trong
	var name1 = "Jonh";
	var age1 = 1;
	print("name1 : $name1");
	// khai báo biến sử dụng kiểu dữ liệu
	String Persionname = 'John Cena'; // Object Name  =  'Bob'
	int age_wwe = 25;
	print("Đô vật Mỹ nổi tiếng nhất là: $Persionname, hiện nay anh ấy $age_wwe tuổi");
	//Khau báo biến sử dụng từ khóa động, có thể chứa tất cả các loại dữ liệu nào
	dynamic myVar = "Xin chao VN";
	print("biến dynamic myVar có giá trị:  $myVar và có kiểu: ${myVar.runtimeType}");
	myVar = 20;
	print("biến dynamic myVar đã  thay đổi kiểu có giá trị:  $myVar có kiểu: ${myVar.runtimeType}");
	myVar = true;
	print("biến dynamic myVar đã  thay đổi kiểu có giá trị:  $myVar có kiểu: ${myVar.runtimeType}");
	//Default value
	//Các biến chưa được khởi tạo có loại là nullnable và có kiểu là null, tất cả đều là nul vì chúng đề là Object
	int? lineCount; //cho phép null
	print("Giá trị mặc định Default value có giá trị là $lineCount và có kiểu là ${lineCount.runtimeType}");
	// Nếu để 1 biến không cho phép null(enable null safe) ta cần khởi tạo giá trị của các biến không null trước khi sử dụng
	// có thể ban đầu chưa đc gán, nhưng khi gán thì nó sẽ nhận giá trị cuối cùng
	lineCount = 20;
	print("Giá trị của biến lineCount sau khi đc gàn là: $lineCount");
	//Late variables dart 2.12: khai báo 1 biến không null được khởi tạo sau khi khaii báo 
	// khởi tạo sau khi khai báo
	late String description; //m tả
	description  = "20";
	print("late $description");
	//final and const-> không thay đổi biến const là hằng số thời gian biên dịch compile-time constaint
	final doan = "Đoàn";
	print("final daon có giá trị $doan và có kiểu là : ${doan.runtimeType}");
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
	//Build-in types // phân loại dữ liệu
	//- Numbers: int double 
	var x = 1;
	var yhex  = 0xDEADBEEF;
	print("Number: yhex= $yhex có type là:${yhex.runtimeType} ");
	var y = 1.1;
	var exponents = 1.42e5;
	//để 1 biến có thể vừa là nguyên vừa là kép
	num xx = 1;
	xx+= 2.5;
	print("Giá trị của xx từ giá 1 có kiểu int sau khi thay đổi có giá trị là: $xx và có kiểu là ${xx.runtimeType}");
	// - String
	// - Boolean
	// - List
	var lists = [1,2,3,4,5];
	var list1 = ['1','2'];
	print("List : $lists : length: ${lists.length} giá trị thứ  3 là: ${lists[2]} ");
	var constantList = const [1, 2, 3]; //them gang so time.
	// hỗ trợ toán tử spread operator (...) và null-aware spread operator // chèn nhiều giá trị vào list
	var listest = [1,1,2,3,3];
	var listest2 = [0,2,3,...listest];
	print("listest2 = $listest2 ");
	var listtest;
	var listss = [2,...?listtest];
	print("null-aware: $listss");
	// - Sets
	var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
	// - Map 
	// tạo 1 tập hợp rông:
	var sets = <String>{};
	sets.add("Phần tử thứ nhất");
	print("sets: $sets : length: ${sets.length}");
	// sử dụng constantSet trước tập hợp
	final constantSet = const {
	  'fluorine',
	  'chlorine',
	  'bromine',
	  'iodine',
	  'astatine',
	};
	var gifts = {
	  // Key:    Value
	  'first': 'partridge',
	  'second': 'turtledoves',
	  'fifth': 'golden rings'
	};

	var giftss = Map<String,String>();
	giftss["first"] = "A";
	giftss["second"] = "B";
	final constantMap = const { // gán const trước tập hợp
	  2: 'helium',
	  10: 'neon',
	  18: 'argon',
	};
	// - Runes
	// - Symbols
	// - Null
	// # ký hiệu #
	//Functions các hàm cũng là 1 đối tượng và có 1 loại, có thế truyền dưới dạng gán các biến hoặc đối số cho các hàm khác
	bool isNoble(int atomicNumber) {
	  return false;
	}
	isNoble1(atomicNumber) {
  		return false;
  	bool isNobles(int atomicNumber) => false; //thu gon
	}
	void enableFlags(bold) {print(1);}; // 1 hoặc 2
	enableFlags(1);
	//enableFlags(bold: true, hidden: false); với giá trị gán có dạng boolean
	//Thay vào đó, nếu bạn muốn một tham số được đặt tên là bắt buộc, yêu cầu người gọi cung cấp giá trị cho tham số,
	// hãy chú thích chúng với yêu cầu:
	//Tham số tùy chọn []:  không cung cấp giá trị mặc định, thì các loại của chúng phải là null vì giá trị mặc định của chúng sẽ là null:
	String say(String from, String msg, [String? device]) {  // đế safe-null thì có thế gắn vào sau biến 1 giá trị bất kỳ
		var result = '$from says $msg';
		if (device != null) {
		result = '$result with a $device';
		}
		return result;
	}
	say('Bob', 'Howdy') == 'Bob says Howdy';// gọi lại mà không có tham số tùy chọn
	print(say("Bob","Jonh"));
	void printElement(int element){
		print(element);
	}
	List<int> printelements = [1,2];
	printelements.forEach(printElement);
	//gán 1 hàm cho 1 biến
	var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!';
	print(loudify("xinchao"));
	//Anonymous functions : chức năng ẩn danh
	// Ví dụ dưới xác định 1 hàm ẩn danh với 1 tham số, mục chưa được nhập và chuyển nó tới hàm bản đồ, hàm được gọi ch từng mục
	// trong danh sách, chuyển đổi từng chuỗi trong chữ hoa.. Sau đó hàm ẩn danh được truyền cho Foreach, mỗi chuỗi được chuyển đổi được in ra cùng với độ dài của nó
	const listanonymous = ["apple","banana","orange"];
	listanonymous.map((item){
		return item.toUpperCase();
		}).forEach((item){
		print("$item: ${item.length}");
		});

	//Operator Toán tử: ký hiệu hoặc từ khóa được sử dụng để thưc hiện các thao tác trên các giá trị 
	// + - */ , == , != ,>,<, >=,<=
	//and && or || not !
	//gán: =;+=; -=;*= ;/=;%=;
	//Toán tử bặc 3: thay thế if elsed đơn giản: (điều kiện? if_true: if_false), if null : ?? =    *=    /=   +=   -=   &=   ^=
	//..    ?.. : thác , điều kiện: ex1 ? ex2 : ex3
	print("${2+3 ==5}");
	//as : chuyển sang 1 loại cụ thể
	// is: đúng nếu đối tượng cùng loại chỉ định
	
}