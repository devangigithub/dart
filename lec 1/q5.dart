import 'dart:io';

void main()
{
    print('Enter starting number : ');
    int s = int.parse(stdin.readLineSync()!);

    print('Enter ending number : ');
    int e = int.parse(stdin.readLineSync()!);

    int i;
    int j;

    for(i=s;i<=e;i++)
    {
      print ('Table of : $i ');
      for(j=1;j<=10;j++){
      
      int result = i*j;

      print('$i X $j $result');
    }
    }
}