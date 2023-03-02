class constfinal {
	final String? _id; //dung final chidc nhan 1 gia tri dau vao
	String? _name;
	String? _old;
	constfinal(this._id,this._name,this._old);
}

	void main() {
		constfinal a = constfinal("111","Laisa","53 years");
	
		print("${a._id} and ${a._old} and ${a._name}");
	}
