void main() {
  
  List<List<int>> matrix1 = [[1, 2, 3],[4, 5, 6], [7, 8, 9]];

  List<List<int>> matrix2 = [[1, 2, 3],[4, 5, 6], [7, 8, 9]];

  List<List<int>> result = [[0, 0, 0],[0, 0, 0],[0, 0, 0]];
    

  for (int i = 0; i < 3; i++) {
   
    for (int j = 0; j < 3; j++) {
      
      result[i][j] = matrix1[i][j] + matrix2[i][j];
    }
  }

  for(int i=0;i<3;i++)
  {
     print(result[i]);
  }
}