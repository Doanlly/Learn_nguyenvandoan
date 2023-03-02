class Phanso {
	late double _tuso;
	late double _mauso;

	//Phanso(this._tuso, this._mauso);//: _tuso = tuso,_mauso = mauso;
	Phanso( double tuso, [double mauso = 1.0]	){
		this._tuso = tuso ;
		this._mauso = mauso;
	}
	void inn(){
		print("Tử:  $_tuso \nMẫu:  $_mauso");
	}
	Phanso.zero(){
		_tuso = 0;
		_mauso = 1;
	}

}
