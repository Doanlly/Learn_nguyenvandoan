import "dart:math";
var n = 8;
bool isSafe(int x,int y,board){
	if (x>-0 && y >=0  && x< n&& y<n && board[x][y] == -1  ){
		return true;
	}
	return false;
}
void printSolution(int n, board){
	for(int i   = 0 ;i<n;i++){
		for(int j   = 0 ;j<n;j++){
			print("${board[i][j]}");
			
		}
	}	
	//print("\n");
	
}
solveKl(int n){
	//board = [[-1 for i in range(n)]for i in range(n)]
	var board = List.generate(n,
	(i) => List.generate(n + 1, (j) => 0, growable: false),
	growable: false);
	var move_x = [2, 1, -1, -2, -2, -1, 1, 2];
    var move_y = [1, 2, 2, 1, -1, -2, -2, -1];
    board[0][0] = 1;
    var pos = 1;
    // board.forEach((row) {
	// print(row);
	//Kiểm tra xem giải pháp có tồn tại hay không
	if ( solveKTUtil(n,board,0,0,move_x,move_y,pos)){
		print("Giai phap khong ton tai");
	}
	else{
		printSolution(n,board);
	}
	
	//array.forEach((row));
}
solveKTUtil(int n, board, curr_x, curr_y, move_x, move_y, pos){
	if(pos == pow(n,2)){
		return true;
	}
	for (int i = 0; i< 8;i++ ){
		var new_x = curr_x+ move_x[i];
		var new_y = curr_y + move_y[i];
		if (isSafe(new_x, new_y, board)){
			board[new_x][new_y] = pos;
			if(solveKTUtil(n,board,new_x,new_y,move_x,move_y,pos+1)){
				return true;
			}
			// backtracking 
			board[new_x][new_y] = -1;
		}
	}
	return false;
}


void main(){
	var cols = 8;
	var rows = 8;
	// var array = List.generate(rows,
	//     (i) => List.generate(cols + 1, (j) =>8 , growable: false),
	//     growable: false);
	// final array = List.generate(rows,
	// 	(i) => List.generate(cols + 1, (j) => 0, growable: false),
	// 	growable: false);

	// array.forEach((row) {
	// print(row);
	// });
	solveKl(8);
	

	var chessBoard = new List.generate(8, (_) => new List.filled(8, 0));
	List.generate(8, (_) => List.filled(8, 0));
}
