import 'dart:io';

int sumOfall(List<List<int>> matrix) 
{
  int sum = 0;
        for (int i=0;i<matrix.length;i++) 
        {
          for (int j=0;j< matrix[i].length;j++) 
          {
            sum =sum+matrix[i][j];
          }
        }
        return sum;
}
  

int sumrow(List<List<int>> matrix, int row) {
  int sum = 0;
        for (int i=0;i<matrix.length;i++) 
        {
          sum =sum+matrix[row][i];
        }
  return sum;
}

int sumcolumn(List<List<int>> matrix, int column) {
 int sum = 0;
        for (int i=0;i<matrix.length;i++) 
        {
          sum =sum+matrix[i][column];
        }
  return sum;
}

int sumdiagonal(List<List<int>> matrix) {
 int sum = 0;
        for (int i=0;i<matrix.length;i++) 
        {
          sum =sum+matrix[i][i];
        }
  return sum;
}

int sumantidiagonal(List<List<int>> matrix) {
  int sum = 0;
        for (int i=0;i<matrix.length;i++) 
        {
          sum =sum+matrix[i][matrix.length - 1 - i];
        }
  return sum;
}

void main() {
  List<List<int>> matrix = [[1, 2, 3],[4, 5, 6],[7, 8, 9]];

  while (true) {
    print("\nMenu:");
    print("1. Sum of all elements");
    print("2. Sum of specific row");
    print("3. Sum of specific column");
    print("4. Sum of diagonal elements");
    print("5. Sum of anti-diagonal elements");
    print("0. Exit");

    stdout.write("Enter your choice: ");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print("Sum of all elements: ${sumOfall(matrix)}");
        break;

      case 2:
        stdout.write("Enter row number : ");
        int row = int.parse(stdin.readLineSync()!);
        print("Sum of row $row: ${sumrow(matrix, row)}");
        break;

      case 3:
        stdout.write("Enter column number : ");
        int column = int.parse(stdin.readLineSync()!);
        print("Sum of column $column: ${sumcolumn(matrix, column)}");
        break;

      case 4:
        print("Sum of diagonal elements: ${sumdiagonal(matrix)}");
        break;

      case 5:
        print("Sum of anti-diagonal elements: ${sumantidiagonal(matrix)}");
        break;

      case 0:
        exit(0);

      default:
        print("Invalid choice!");
    }
  }
}


