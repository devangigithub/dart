import 'dart:io';

void main()
{
  

  print("Enter size of list");
  int a=int.parse(stdin.readLineSync()!);

   List<int> number = [];
   print ("Enter element : ");
  for(int i=0;i<a;i++)
  {
      int ele=int.parse(stdin.readLineSync()!);
      number.add(ele);
  }  

  List<String> result = [];
  
     for (int number in number)
    // for(int i=0;i<number.length;i++);
    {
   result.add("$number hello");
  // result.add("${number[i]} Hello");
  
  }
  print("Output");
  print(result);
  

}