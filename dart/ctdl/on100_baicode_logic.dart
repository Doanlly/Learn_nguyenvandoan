import "dart:math";
//https://www.fluttercampus.com/guide/170/how-to-sort-list-on-alphabetical-order-in-dart-flutter/
//Bai 1
// Viết chương trình tìm tất cả các số chia hết cho 7 nhưng không phải bội số của 5, 
// nằm trong đoạn 2000 và 3200 (tính cả 2000 và 3200). Các số thu được sẽ được 
// in thành chuỗi trên một dòng, cách nhau bằng dấu phẩy.

class Something {
  final String name;

  Something(this.name);

  @override
  String toString() => name;
}

class Pair<T1, T2> {
  final T1 a;
  final T2 b;

  Pair(this.a, this.b);
}
void main() {
	print(2002/7);
	List a = [];
	for (int i  = 2000 ; i<3200; i++){
		if(i%7==0){
			if(i %5 != 0){
				a.add(i);

			}
		}
	}
	print(a);

	// Viết một chương trình có thể tính giai thừa của một số cho trước. 
	//Kết quả được in thành chuỗi trên một dòng, phân tách bởi dấu phẩy. 
	//Ví dụ, số cho trước là 8 thì kết quả đầu ra phải là 40320.
	int giaithua(a){
		if(a ==0){
			return 1;
		}
		return a*giaithua(a-1);
	}
	print(giaithua(8));

	//Với số nguyên n nhất định, hãy viết chương trình để tạo ra một dictionary chứa (i, i*i) như là số nguyên từ 
	//1 đến n (bao gồm cả 1 và n) sau đó in ra dictionary này.

	// Ví dụ: Giả sử số n là 8 thì đầu ra sẽ là: {1: 1, 2: 4, 3: 9, 4: 16, 5: 25, 6: 36, 7: 49, 8: 64}.
	var input = new Map();
	 bai3(n) {
		for (int i = 1; i<=n;i++){
			input[i] = i*i;
		}
		print(input);
	}
	bai3(8);

	//Bai 4
	//Viết chương trình chấp nhận một chuỗi số, phân tách bằng dấu phẩy từ giao diện điều khiển, 
	//tạo ra một danh sách và một tuple chứa mọi số.
	//Ví dụ: Đầu vào được cung cấp là 34,67,55,33,12,98 thì đầu ra là:
// 	['34', '67', '55', '33', '12', '98']
// ('34', '67', '55', '33', '12', '98')
	var a1 = 23;
	var b1 = 22;
	var c1 = 7;
	List characternumber  =  [];
	characternumber.addAll([a1,b1,c1]);
	print(characternumber);
	//Bai 5 :  input : doan dep trai ==> outpur DOAN DEP TRAI
	var inppercas = "doan dep trai";
	print("chuoi viet hoa: ${inppercas.toUpperCase()}");
	//Bai 6
	//Viết một method tính giá trị bình phương của một số.
	int x6  = 6;
	var o6 = pow(x6,x6);
	print("Bai 6: gia tri  mu cua $x6 la : ${o6}");
	print("Bai 6: gia tri  mu cua $x6 mu 2 la : ${pow(x6,2)}");
	// 	Viết chương trình và in giá trị theo công thức cho trước: Q = √([(2 * C * D)/H]) 
	// (bằng chữ: Q bằng căn bậc hai của [(2 nhân C nhân D) chia H]. Với giá trị cố định của
	//  C là 50, H là 30. D là dãy giá trị tùy biến, được nhập vào từ giao diện người dùng, 
	//các giá trị của D được phân cách bằng dấu phẩy.
	// Ví dụ: Giả sử chuỗi giá trị của D nhập vào là 100,150,180 thì đầu ra sẽ là 18,22,24.
	void congthuc(c,d,h){

		var a  = sqrt((2*c*d)/h).toInt(); // lam tron   d = 20.5; d.toInt() = 20 , d.round()= 21 int, d.ceil = 21 , d.floor = 20
		print("Gia tri cong thuc o bai 10 Q=  $a");	
	}
	congthuc(2,9,2);
	//cau 10
	// Viết một chương trình có 2 chữ số, X, Y nhận giá trị từ đầu vào và tạo ra một mảng 2 chiều. Giá trị phần tử trong hàng thứ i và cột thứ j của mảng phải là i*j.
	// Lưu ý: i=0,1,...,X-1; j=0,1,...,Y-1.
	// Ví dụ: Giá trị X, Y nhập vào là 3,5 thì đầu ra là: [[0, 0, 0, 0, 0], [0, 1, 2, 3, 4], [0, 2, 4, 6, 8]]
	void matrix(x,y){
		List a = [];
		for(int i  = 0; i<x; i++){
			List a1 = [];
			for (int j = 0;j<y;j++){
				a1.add(i*j);
			}
			a.add(a1);
		}
		print(a);
	}
	matrix(3,5);
	//Cau 13
	List<String> countries = ["Nepal", "India", "Pakistan","Again","Asd","Bangladesh","USA","Canada","China","Russia",
	];
	countries.sort((a, b){ //sorting in ascending order
    return a.compareTo(b);});
    print(countries);
    //Cau 14
	// Viết một chương trình chấp nhận đầu vào là chuỗi các số nhị phân 4 chữ số, phân tách bởi dấu phẩy, 
	//kiểm tra xem chúng có chia hết cho 5 không. Sau đó in các số chia hết cho 5 thành dãy phân tách bởi dấu phẩy.
	// Ví dụ đầu vào là: 0100,0011,1010,1001
	// Đầu ra sẽ là: 1010
	List array4 = [0110,0100,0011,1010,1001,0101];
	List<String> array14 = [];
	for (int i = 0; i<array4.length;i++){
		String test = array4[i].toString();
		
		String denary = int.parse(test, radix: 2).toRadixString(10);
		print("số thú $i:  $test => $denary");
		int input2 = int.parse(denary);
		if(input2 % 5 ==0){
			// array14.add(test);
			print("Số chia hết cho 5 đó là: ${array4[i]}");
		}
		
	}
	//print("Số chia hết cho 5 đó là: $array14");
	//for (int i = 0; i)//String denary = int.parse(aaa, radix: 2).toRadixString(10);//print(denary);
	num sum = 0;
	for (num i = 4; i>0;i--){
		sum = pow(2,i) +sum;
	}
	print("test: $sum");
	//Bai 15  tìm tất cả các số trong đoạn 1000 và 3000 (tính cả 2 số này) sao cho tất cả các chữ số trong số đó là số chẵn.
	void bai15(){
		List array = [];
		for( int i  = 2000; i<= 2100;i++){
			if (i%5==0){
				array.add(i);
			}
		}
		print("Bai 15 tat ca cac so chan la: $array");
	}
	bai15();
	//bai 16 in ra do dai cau
	print(('Hello Jordania').length);
	//Bai 17 Viết một chương trình tính giá trị của a+aa+aaa+aaaa với a là số được nhập vào bởi người dùng.
	void bai18(int a){
		String a1 = a.toString();
		String a2 = a1+a1;
		var aa2 = int.parse(a2);
		String a3 = a1+a1+a1;
		var aa3 = int.parse(a3);
		String a4 = a3+a1;
		var aa4 =  int.parse(a4);
		sum = a+ aa4 + aa2 + aa3;
		print(sum);
	}
	bai18(1);
	//Bai19 Giả sử đầu vào là: 1,2,3,4,5,6,7,8,9 thì đầu ra phải là: 1,3,5,7,9
	void bai19(){
		List a = [1,2,3,4,5,6,7,8,9];
		//a.remove(2);
		//print(a);
		for(int i = 0; i<a.length; i++){
			// print(i.runtimeType);
			if(a[i] %2 ==0){
				a.remove(a[i]);
			}
		}
		print(a);
	}
	bai19();
	void bai20(){ //
		//Viết chương trình tính số tiền thực của một tài khoản ngân hàng dựa trên nhật ký giao dịch được
		// nhập vào từ giao diện điều khiển. D-300 D-300 W-200 D-100thì đầu ra sẽ là: 500
		var D = 300;
	}
	//Bai21
	// 1. Ít nhất 1 chữ cái nằm trong [a-z]
	// 2. Ít nhất 1 số nằm trong [0-9]
	// 3. Ít nhất 1 kí tự nằm trong [A-Z]
	// 4. Ít nhất 1 ký tự nằm trong [$ # @]
	String? validatePassword(String value) {
		RegExp regex =
		RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
		if (value.isEmpty) {
			return 'Please enter password';
		} else {
			if (!regex.hasMatch(value)) {
				return 'Enter valid password';
			} else {
				return "GOOD";
			}
		}
	}
	print(validatePassword("123D123123#ds"));
	//bai 22
	//Viết chương trình sắp xếp tuple (name, age, score) theo thứ tự tăng dần, name là string, age và height là number. Tuple được nhập vào bởi người dùng. Tiêu chí sắp xếp là:
	//Sắp xếp theo name sau đó sắp xếp theo age, sau đó sắp xếp theo score. Ưu tiên là tên > tuổi > điểm.
	final aaa = [Something('A'), Something('E'), Something('B'), Something('C')];
	final bbb = [1, 5, 2, 3];

	final tempList =
	  List.generate(aaa.length, (i) => Pair(aaa[i], bbb[i]), growable: false)
	    ..sort((p1, p2) => p1.b.compareTo(p2.b));

	for (var i = 0; i < tempList.length; i++) {
	final pair = tempList[i];
	aaa[i] = pair.a;
	bbb[i] = pair.b;
	}

	print("Bai 22 Sort: $aaa"); // [A, B, C, E]
	print(bbb); // [1, 2, 3, 5]

	//Câu 24 
	// Một Robot di chuyển trong mặt phẳng bắt đầu từ điểm đầu tiên (0,0). Robot có thể di chuyển theo hướng UP, DOWN, LEFT và RIGHT với những bước nhất định. Dấu di chuyển của robot được đánh hiển thị như sau:
	// UP 5 DOWN LEFT 3 RIGHT 3
	// Các con số sau phía sau hướng di chuyển chính là số bước đi. 
	//Hãy viết chương trình để tính toán khoảng cách từ vị trí hiện tại đến vị trí đầu tiên, sau khi robot đã di chuyển một quãng đường. Nếu khoảng cách là một số thập phân chỉ cần in só nguyên gần nhất.
	// Ví dụ: Nếu tuple sau đây là input của chương trình:
	// UP 5  DOWN 3  LEFT RIGHT 2
	// thì đầu ra sẽ là 2.
	
	//câu 25 Viết chương trình tính tần suất các từ từ input.
	String a25 = "New to Python or choosing between Python 2 and Python 3? Read Python 2 or Python 3";
	var elements = a25.split(' ');
	print("Bai 25: $elements");
	// lặp qua các phần tử danh sách
	// nếu bản đồ của bạn không có phần tử danh sách được đặt làm khóa, thì hãy tạo phần tử đó với giá trị là 1
	// mặt khác, nếu phần tử đã tồn tại, thì thêm 1 vào giá trị khóa hiện có
	void bai25(){
		var map = Map();

		elements.forEach((element) {
		if(!map.containsKey(element)) {
		map[element] = 1;
		} else {
		map[element] += 1;
		}
		});

		print("Bai 25 $map");
	}
	bai25();
	print("------------------=================");
	
	//Định nghĩa 1 hàm với 2 số là đối số. Bạn có thể tính tổng trong hàm và trả về giá trị.
	bai26(a, b){
		var sum =  a+b;
		return sum;
	}
	print("bai 26: ${bai26(2,3)}");
	//Định nghĩa hàm có thể nhận hai số nguyên trong dạng chuỗi và tính tổng của chúng, sau đó in tổng ra giao diện điều khiển.
	bai28(String a, String b){
		var aa  = double.parse(a);
		var bb  = double.parse(b);
		return aa+bb;
	}
	print("bai 28: ${bai28("23","27")}");
	// //Định nghĩa hàm có thể chấp nhận input là số nguyên và in "Đây là một số chẵn" nếu nó chẵn và in "Đây là một số lẻ" nếu là số lẻ.
	bai31(a){
		if (a%2 ==0 && a > 0){
			return "Đây là số chẵn";
		}else 
			return "Đây là số lẻ";
	}
	print("Bài 31 ${bai31(22)}");
	//bài 41 tuple (1,2,3,4,5,6,7,8,9,10) viết chương trình in một nửa s trong 1 dòng và 1 nửa cuối trong 1 dòng.
	bai41(List<String> c){
		int l = (c.length/2).toInt();

		print(c.take(l).toList());
		//print(c[i:c.length])
	}
	List<String> ccc1 = ['1','2','3','4','5','6','7','8'];
	bai41(ccc1);
	// //liet ke tat ca

	var intList = [5, 8, 17, 11];
	if (intList.every((n) => n > 4)) {
	  print('All numbers > 4');
	}
	//liet ke moi
	var intList1 = [5, 8, 17, 11];

	if (intList1.any((n) => n > 10)) {
	  print('It nhat 1 so > 10');
	}
	//Loc cac muc trong danh sach
	var myList = [0, 2, 4, 6, 8, 2, 7];
	var loc1 = myList.where((item) => item > 5).toList();   // [6, 8, 7]
	var loc2 = myList.firstWhere((item) => item > 5);       // 6
	var loc3 = myList.lastWhere((item) => item > 5);
	print("Loc 1: $loc1 , Loc 2: $loc2 , Loc3: $loc3");
	Bai44(String a){ //
		// in "Yes" nếu chuỗi là "yes" hoặc "YES" hoặc "Yes", nếu không in "No".
		if(a =="YES" || a == "Yes" || a == "yes"){
			print("Yes");
		}
		else{
			print("NO");
		}
	}
	Bai44("YES");

	//filter list
	// bai 45 Viết chương trình Python có thể lọc các số chẵn trong danh sách sử dụng hàm filter. Danh sách là [1,2,3,4,5,6,7,8,9,10].
	var fruits = ['apples', 'oranges', 'bananas'];
	var zzzz = fruits.where((f) => f.startsWith('a')).toList(); //apples
	print(zzzz);
	List<String> countrier = ["Canada", "Brazil", "USA", "Japan", "China","UK", "Uganda", "Uruguay"];
	List<String> filter = [];
	filter.addAll(countrier);
	filter.retainWhere((countryone){
	    return countryone.toLowerCase().contains("U".toLowerCase());
	    //you can add another filter conditions too
	});
	print(filter); //list of countries which contains 'U' on name
	List<String> countries1 = ["Canada", "Brazil", "USA", "Japan", "China","UK", "Uganda", "Uruguay"];
	filter.addAll(countries1);
	filter.retainWhere((countryone){
	    return countryone.toLowerCase().contains("Ja".toLowerCase()); // chuyển thành ký tự thườngheets
	    //you can add another filter conditions too
	});
	print(filter); 
	List<int> listt1= [1,2,3,4,5,6,7,8,9,10];
	List<int> ouputlist1 = [];
	ouputlist1.addAll(listt1);
	ouputlist1.retainWhere((n){
		return (n%2 ==0);
		});
	print(ouputlist1);
	List<int> numbers = [2, 4, 6, 8, 10, 11, 12, 13, 14];
	List<int> oddNumbers = numbers.where((number) => number %2 ==0).toList();
	print(oddNumbers);
	//bai 47 
	// filter() để tạo list chứa giá trị bình phương của các số chẵn trong [1,2,3,4,5,6,7,8,9,10].
	var ax = pow(2,2);
	print(ax);
}