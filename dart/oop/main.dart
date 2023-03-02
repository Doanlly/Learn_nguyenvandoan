void main(){
	//var dog = new Dog(4);
	var dogmale = new Dog.Female();
	var dogg = new Dog(10);
	//print(dog.legs);
	//print(dogmale.legs);
	print(dogg.legs);
	//dog.talk();

	var cat = new Cat.Male();
	cat.legss = 10;
	print(cat.legss);
	// cat.talk();
	cat.fly();

	var dogs = new Doddoan.Male();
	dogs.run();
	dogs.flyy();
	dogs.changColor();
	print("Optional: ");
	var doan = new Doan(4,color: "Nguyễn Văn Đoàn" );
	var doan1 =  new Doan(4);
	print(doan.leg);
	print("Doan1 = : ${doan1.leg}");
	var lyly =  new LyLy(4);
	lyly.math(1,2,3);
	lyly.thaydoi(1,c:4,b:12);

}
//1,Contructor: default contructor, parament contructor, named constructor
// Factory
class Dog{
	int? legs;
	// Dog(int legs){
	// 	print("paramentor constructor"); // ko ddc tao them 1 doi tuong dog khac 
	// 	this.legs = legs;

	void talk(){
		print("Gau Gau");
	}
	Dog.Female(){
		print("female-cai");
	}
	factory Dog(int type){
		//tu tra ve nhieu loai contructor neu minh muon
		if(type ==0){
			return Dog.Male(); 
		}
		else if(type ==10){
			return Dog.A();
		}
		return Dog.Female();
	}
	Dog.Male(){
		print("Male");
	}
	Dog.A(){
		print("A");
	}
	//cos the tao ra nhieu contructor  trong dart
}
class Anomal {
	int? _legs;
	void fly(){
		print("Kế thừ từ lớp con: Fly");
	}
}

//getter- setter/ / thể hiện tính bao đóng, truy cập, hàm này // cập nhật, lấy giấ trị thuộc tính// nhất là các thuộc tính ở phạm vi private
// binhf thuong co the gan no bang bat ky doi tuong nao, ví dụ: tại hàm main đặt var dog.legs = 10 được luôn
// Tính kế thừa
// abstraction: tính trừu tượng.
// overidding: ghi đè cho phép một lớp con hoặc lớp con cung cấp một triển khai cụ thể của một phương thức đã được cung cấp bởi một trong các lớp cha hoặc lớp cha của nó.

/**
abstract class Anomal1 {
	int? _legs;
	void fly();//==> abstract: phương thức ảo
	void fly1();
}

// interface: khai báo tuongwfminh: ko có, thông qua abstract
// mixed: tính đa KẾ THỪA
class Cat1 implements Anomal1{ // khi implement thì buộc phải override 2 phương thức ở class Anomal1
	set legss(value) => _legss = value;
	 get legss => _legss;
	Cat1.Male(){
		print("Male");
	}
	@override
	void fly(){
		//fly logic
	}
	@override
	void fly2(){
		//fly logic
	}
}
*/
class Cat extends Anomal{
	//chỉ extends đc 1 cái
	int? _legss;
	//set tên function
	set legss(value) => _legss = value;
	 get legss => _legss;
	Cat.Male(){
		print("Male");
	}
	//cos the tao ra nhieu contructor  trong dart
}
// mixed: tính đa kế thừa trong Dart

class DogPhuQuoc {
	//String? color;
	int? speed;
	void run(){
		speed = 1000;
		print(speed);
	}
}
class Dogmausac {
	//String? color;
	void changColor(){}
}
class Dogcuadoan{
	void flyy(){
		print("Chó bay");
	}
}
// làm sao để vừa chạy nhanh vừa bay được
class Doddoan extends Dogcuadoan with DogPhuQuoc, Dogmausac{
	Doddoan.Male(){
		print("Đực");
	}
}

//OPTIONAL [possitional, named] / có thể lấy bất kỳ thuộc tính nào trong đối tượng đấy
class Doan{
	int? leg;
	String? color;
	Doan(int legs, {this.color}){
		this.leg = legs; // gán cho nó
	}
}
// posstional : Sở hữu.
class LyLy{
	int? age;
	String? color;
	LyLy(int ages, {this.color}){
		this.age = age;
	}
	void math(int a, int b, int c){
		print("$a - $b - $c");
	}
	void thaydoi(int a,{int? b, int? c}){
		print("$a, $b ,$c");
	}
}