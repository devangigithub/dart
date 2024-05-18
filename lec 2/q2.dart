import 'dart:io';

void main()
{
   stdout.write("Enter your size : ");
   int a=int.parse(stdin.readLineSync()!);

    List<String> stateofindia = [];
    
    print("Enter your state name :");
    for(int i=0;i<a;i++)
     {
        String  state = stdin.readLineSync()!;
        stateofindia.add("$state");

     }
       print("List of states : $stateofindia");
}