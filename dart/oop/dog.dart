class Chicken {
	//String name = "Đỏ";
	//late String name;
	//String name; đang dạng public
	//private để ko thể thay đổi
	String _name; 
	//co the them final de nhan 1 lan
	double _weight;
	int _age;
	String _color ;
	bool _sex ;
	int _price;
	//gọi và khởi tạo lại
	// Chicken(String name, double weight, int age,String color, bool sex, int price){
	// 	this.name = name;
	// 	this.weight = weight;
	// 	this.age = age ;
	// 	this.color= color;
	// 	this.sex  = sex;
	// 	this.price = price;
	// }

	Chicken(this._name,this._weight,this._age,this._color,this._sex,this._price);

	String get name => _name;
	double get weight => _weight;
	int get age => _age;
	String get color => _color;
	bool get sex => _sex;
	int get price => _price;
	void Activity() {
		//nội suy chuỗi
		print("con ${this._name} vừa gáy ò ó o o");
	}
	//hàm có chức năng đổi tên
	set newName (String newName){
		_name = newName;
	}
}
class DOG {
	final String _ten;
	final String _gioitinh;
	final int _cannang;
	DOG(String ten,String gioitinh, int cannang): _ten = ten,_gioitinh = gioitinh,_cannang = cannang;
	void fooo(){
		print("OK");
	}

}

