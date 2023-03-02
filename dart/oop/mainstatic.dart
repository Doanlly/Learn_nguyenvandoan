import "static_const_final.dart";
void main() {
	var statics = StaticClass();
	print("${StaticClass.a}");
	StaticClass.printName();
	print("${statics.b}");
	StaticClass.nonprintName();
}