
void main() {
 
  List<List<int>> matrix1 = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];

  List<List<int>> matrix2 = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];

  List<List<int>> result = addMatrices(matrix1, matrix2);

  
  print("Resultant Matrix after Addition:");
  for (int i = 0; i < result.length; i++) {
    print(result[i]);
  }
}

List<List<int>> addMatrices(List<List<int>> matrix1, List<List<int>> matrix2) {
  List<List<int>> result = List.generate(3, (_) => List.filled(3, 0));

  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      
      result[i][j] = matrix1[i][j] + matrix2[i][j];
    }
  }

  return result;
}
