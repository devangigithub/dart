import 'dart:io';

void main()
{
    print('Enter any number : ');
    int n=int.parse(stdin.readLineSync()!);

    print('Cube = ${n*n*n}');
}