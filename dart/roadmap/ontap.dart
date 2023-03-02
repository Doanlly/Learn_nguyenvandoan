import "dart:math";
///mỗi khi thêm phần tử đến giới hạn, ta lại phải sao chép toàn bộ dữ liệu sang một vùng nhớ có kích thước gấp đôi.
// Một chương trình Dart cơ bản:
void printInteger(int numb){

	print("Số tự nhiên thứ ${numb-1} là $numb" );
} 

// Biến
var name = 'Nguyễn Văn Đoàn'; // biến không cần kiểu rõ rang
var numa = 2.2;
var dict = ['XIn chao tat ca moi nguoi', 'Hi'];
var s = r'In a raw string, not even \n gets special treatment.'; // r để mặc định nó chỉ là 1 dòng
var images = {'tags' 'saturn','url'  '//path'};


void main(List<String> arguments) { // tham số tùy chọn là arg
	assert(arguments.length == 2);
	assert(arguments[0] == "1");
	assert(arguments[1] == 'test');
	print(arguments);
	print("ÔN Tập");
	int numb = 3;
	print(name);
	print(s);
	for (int i  = 1; i<=numb;i++){
		printInteger(i);
	}
	num b = 1;
	print("type b: ${b.runtimeType} and b = $b " );
	b += 0.5;
	print("B3 = $b có type là :  ${b.runtimeType}");

	//Biến 1 chuỗi thành 1 số:
	var str1 = int.parse('1');
	print("Đổi thành int: srt1= $str1 có type: ${str1.runtimeType}"); // tương dự với double
	var intostring = 20.toString();
	print("intostring = $intostring and type : ${intostring.runtimeType}");
	assert((3 << 1) == 6); // 0011 << 1 == 0110

	//Boolean: có 2 object có kiểu bool là true và false
	var fullname = '';
	print("Chuỗi fulname : ${fullname.isEmpty}");
	// List
	var list = [3,7,2001];
	var list1 = ['1','2','3'];
	print("len list = ${list.length}");
	var sum = 0;
	for (int i =0; i< list.length;i++){
		sum =sum+ list[i]; 
	}print("sum = : ${sum}");
	var listf = [];
	var list2 = [0, ...?listf];
	print("listf null => sau khi ?listf thì list2 dài: ${list2.length}");
	var nav = ['Home', 'Furniture', 'Plants', if (1 <2) 'Outlet'];
	var listost = ['#0', for (var i in list) '#$i'];
	print(" nav = $nav \n listost = ${listost}");
	// Set: bộ gồm nhiều items
	var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'}; // {} : trống
	halogens.add("đoàn"); // addAll thêm het tu 1 set khac
	print(" length:${halogens.length} type: ${halogens.runtimeType}");
	final constantSet = const {
	'fluorine','chlorine','bromine','iodine','astatine',
	};//tạo hằng số thời gian biên dịch:
	//Object Map
	var map1 = {
		'Đoàn': "03/07/2001",
		'Huyên': '16/03/1994',
		'Nghĩa' : '22/02/1997'
	};//hoặc dùng Map
	var map2 = Map(); // nếu để const sẽ gặp lỗi
	map2['HI'] = 'Xin chào';
	map2['bye'] = "Tạm biệt";
	print("map2 = $map2 \n map1 $map1  length map1 = ${map1.length}");
	//Runes là 1 tập mã  UTF-32 của String
	Runes input = new Runes(
  	'\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
	print(new String.fromCharCodes(input));
	// vì ddarrt là 1 ngôn ngữ hướng đối tượng đích thực nên function cũng là object
	bool isNoble(int atm){
		return atm > 2;
	}
	print("check isNoble: ${isNoble(3)}");
	isNoble1(atomicNumber) {  // cách 2
	  return atomicNumber != null;
	} //cách 3
	bool isNoble2(int atomicNumber) => atomicNumber != null;

	//Thông số tùy chọn sử dụng dấu tham số đặt tên {} , tùy chọc []
	String drink({String drinks = 'whisky'}) { // tham số đặt tên
		return 'I am drink $drinks';
	}
	String say(String from, String msg, String device) {  // tùy chọn 
		var result = '$from là $msg';
		if (device != null) {
			result = '$result với $device';
		}
		return result;
	}
	print("drink: $drink() \n say: ${say("Việt Nam","1 đất nước đẹp", "Doàn" )}");
	//Dart cho phép truyền một function với tư cách là biến của một function khác, 
	//và cũng có thể gán một function vào một biến.
	void printElement(int element) {
		print(element);
	}

	var listt = [1, 2, 3];
	listt.forEach(printElement);

	// trả về 1 hàm cuar wrap function
	Function makeAdder(num addBy) {
		return (num i) => addBy + i;
	}
	// Create a function that adds 2.
	var add2 = makeAdder(2);
	print("$add2  ${add2(4)}");   //2+ 4 = 6
	print("Phép chia trả về kiểu cdouble 5/2: ${(5/2).runtimeType}  kiểu int (5 ~/ 2) = ${5 ~/ 2} ");
	// as: ép kiểu, is : true nếu obj có cùng kiểu chi dịnh, in! true nếu obj không cùng kiểu được chỉ định
	//var c ??= 20; //gán cho b nếu b là null
	// biểu thưc điều kiện (conditional expressions)
	3<4 ? print("đúng") : print("sai");

	//if else
	var diemcuadoan = 7;
	if(diemcuadoan > 6 && diemcuadoan <8){
		print("Đoàn khá");
	}
	else if(diemcuadoan >= 8){
		print("Đoàn giỏi");
	}
	else { print("Đoàn ngu");} 
	//for 
	var callback = [];
	for (var i  =0;i<diemcuadoan;i+=2){
		callback.add(i);
	}
	print(callback);
	var message = StringBuffer('Dart is fun');
	for (var i = 0; i < 5; i++) {
	  message.write('!');
	} print(message);
	// nếu là 1 bộ thì làm ntn cũng đc var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
	// for ( var i in halogens) { //i==1 ? print(i): null;
	// 	print(i);
	// }
	var i = 3;
	while (i<5) {
		i++;
		print("i nè: $i");
	}
	//đánh giá dk sau vong lap
	// do {
	// 	print(i);
	// } while (i<7);
	// Sử dụng break để dừng lặp
	// sử dụng continue để bỏ qua vòng lặp tiếp theo
	for(int i = 1;i <4;i++){
		if (i == 3) continue;
		print(i);
	}
	var kidsBooks = {'Matilda': 'Roald Dahl',
                 'Green Eggs and Ham': 'Dr Seuss',
                 'Where the Wild Things Are': 'Maurice Sendak'};
	for (var book in kidsBooks.keys) {
  	print('$book was written by ${kidsBooks[book]}');
	}
	var commnand = 'OPEN';
	switch (commnand) {
		case 'CLOSE':
			
			break;
		case 'OPEN':
	    	
	    	break;
	    	// continue;
		default:
			print("error");
	}
	// dart  ho tro case trống, cho phép 1 hình thức bỏ qua.
	var command = 'CLOSED';
	switch (command) {
	  case 'CLOSED': // Trường hợp empty thì bỏ qua
	  case 'NOW_CLOSED':
	    // Runs for both CLOSED and NOW_CLOSED.
	    
	    break;
	}
	// nếu muốn bỏ qua có thể sử dụng continue để xác định 1 label;
	// nói qua vè assert(điều kiện, thông báo tùy chọn) phá vỡ quy định nếu đk boolean : false
	//
	var text;
	assert(text != null); //Đảm bảo biến có giá trị khác null.
	// EXception: ngoại lệ, dart có thể throw và bắt ngoại lệ, nếu ex bị lỗi , ko đc k tra, nếu ko bị bắt
	// thì phần đã đưa ra ngoại lệ đó sẽ bị treo và thg sẽ chấm dứt
	//Đây là một ví dụ về throw hoặc nâng cao exception:
 	//throw FormatException('Expected at least 1 section');
 	//Catch; bắt lấy 1 ngoại lệ sẽ ngăn việc ngoại lệ lan truyền, có cơ hội để xử lí nó
	// try {
	//   breedMoreLlamas();
	// } on OutOfLlamasException {
	//   buyMoreLlamas();
	// }
	// nhiều ngoại lệMệnh đề bắt đầu tiên phù hợp với loại đối tượng bị ném sẽ xử lý ngoại lệ.
	// Nếu mệnh đề catch không chỉ định một loại, thì mệnh đề đó có thể xử lý bất kỳ loại đối tượng bị ném nào:
	// 	try {
	//   breedMoreLlamas();
	// } on OutOfLlamasException {
	//   // A specific exception
	//   buyMoreLlamas();
	// } on Exception catch (e) {
	//   // Anything else that is an exception
	//   print('Unknown exception: $e');
	// } catch (e) {
	//   // No specified type, handles all
	//   print('Something really unknown: $e');
	// } Như đoạn mã trước cho thấy, bạn có thể sử dụng bật hoặc bắt hoặc cả hai. Sử dụng khi bạn cần chỉ định loại ngoại lệ. Sử dụng bắt khi trình xử lý ngoại lệ của bạn cần đối tượng ngoại lệ.

	//Bạn có thể chỉ định một hoặc hai tham số để bắt(). Đầu tiên là ngoại lệ đã được ném và thứ hai là theo dõi ngăn xếp (một đối tượng StackTrace).
	// FINALLY
	//Để đảm bảo rằng một số mã chạy cho dù có ném ngoại lệ hay không, hãy sử dụng mệnh đề cuối cùng.
	//Nếu không có mệnh đề bắt khớp với ngoại lệ, thì ngoại lệ sẽ được truyền sau khi mệnh đề cuối cùng chạy:

	var ff = 4;
	while (ff> 3) {
		ff--;
	}
	print(ff);
	do{
		ff--;
		}while (ff>3) ;
		print(ff);
}

