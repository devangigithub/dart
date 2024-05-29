import 'dart:io';

void main()
{
  stdout.write("Enter your size : ");
   int a=int.parse(stdin.readLineSync()!);

  List<String>  name= [];

  stdout.write("Enter element here : ");
  for(int i=0;i<a;i++){

  String aname = stdin.readLineSync()!;
   name.add("$aname");
  }
  Set<String> nameofName = name.toSet();
  List<String> nAme = nameofName.toList();

  print("uniqu elements : ");
  print(nAme);



}