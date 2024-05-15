import 'dart:io';

void main()
{
    print('Enter any number : ');
    int number = int.parse(stdin.readLineSync()!);

     if(number%2==0)
      {
       print('This number is even');
      }
     else
      {
       print('This number is odd');
      } 
  
}