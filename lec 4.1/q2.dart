import 'dart:io';

 void abc(List<String> name)
{
  Set<String> uni=name.toSet();
  List<String> Uni=uni.toList();

  print(Uni);
}
void main()
{
  print("Enter size of list: ");
  int ele=int.parse(stdin.readLineSync()!);

  List<String> name=[];
  print("Enter element of list :"); 
  for(int i=0;i<ele;i++);

  {
    String nAme=stdin.readLineSync()!;
    name.add("$nAme");
    }


   print("uniqu elements : ");
  abc(name);
}