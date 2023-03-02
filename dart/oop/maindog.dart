import 'dog.dart';
void main() {
	var chicken = Chicken("Đỏ đỏ",1.2,3,"Lá tre",true,10000);
	print("Con gà này có tên là ${chicken.name}  \n Loại gà: đực? ${chicken.sex} \n số tuổi : ${chicken.age} \n Màu sắc: ${chicken.color} \n giá tiền: ${chicken.price}"); 
	chicken.Activity();
	//chicken._name = "Đen đen"; //vì các tham số trong class vẫn là public (ko có _ dưới this) nên có thể đổi giá trị 
	chicken.newName = "DOG DOG"; 
	print("con gà vừa được đổi tên thành ${chicken.name}");
	var dog = DOG("Béo","Cái",12);
	dog.fooo();
}

