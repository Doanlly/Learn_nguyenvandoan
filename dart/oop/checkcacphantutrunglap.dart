import "dart:io";
	List a =  [0,1,2,3,0,1,2,3,0,1,2,3,];
	List b1 =  [0,1,2,3,1,2,3];
	var check = 0;
	var liste = {...a};
	List c = liste.toList();
	var details = new Map();
	//liste =  a;
	void main() {
		b1 = a;
		b1.removeAt(1);
		print(b1);
		print("a.liste= $liste");
		print(c);
			for (int i = 0 ; i< c.length;i++){
				for (int j  = 0 ;j<a.length;j++){
					if(c[i] == a[j]){
						check = check+1;
						details[c[i]] = check;	
					}

				}
				check =  0;

			}
			print(" detail: $details");
			//print("$check");
			var moveid = new Map();
			//print(moveid.length);
			List b = [];
			//List a =  [1,0,2,3,1,0,2,3,1,0,2,3,1,0,2,3];
			for(int i = 2;i< a.length;i+=4){
				b.add(a[i]);
			}	
			print(b);
	}
