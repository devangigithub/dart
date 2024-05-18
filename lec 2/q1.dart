import 'dart:io';

void main()
{
  print("Enter size of list");
  int a=int.parse(stdin.readLineSync()!);

   List number=[];
  
  print ("Enter element : ");
  for(int i=0;i<a;i++)
  {
      int ele=int.parse(stdin.readLineSync()!);
       number.add("$ele hello");
  }  
    print("Output  $number");
  
  }

