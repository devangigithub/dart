int? sum({required List<int> num}) 
{
  int total = 0;
  {
  for(int i=0;i<=num.length;i++)
    total =total+i;
  }
  return total;
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int? result = sum(num: numbers);

  print("ELEMENTS OF LIST : $numbers");
  print("SUM OF ALL ELEMENTS IS : $result");
}
