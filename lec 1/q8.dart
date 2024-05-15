import 'dart:io';

void main()
{
    print('Enter Principal : ');
    int p = int.parse(stdin.readLineSync()!);

    print('Enter Rate : ');
    int r = int.parse(stdin.readLineSync()!);

    print('Enter Time : ');
    int t = int.parse(stdin.readLineSync()!);

    double interest = (p * r* t)/100;

    print('Simple Interest =$interest');
    
}