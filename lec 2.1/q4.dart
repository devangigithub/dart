
import 'dart:io';

void main()
{
  print("Enter starting number: ");
  int n =int.parse(stdin.readLineSync()!);

  for(int i=1;i<=10;i++)
{
  int result =n*i;
  print('$n X $i = $result');
}
  
}
