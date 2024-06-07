import 'dart:convert';
import 'dart:io';

class std{
  int? std_id;
  String? std_name;
  int? std_age;
  int? std_std;
  int? std_mobile;
  void setdata()
  {
    print("Enter your id: ");
    std_id=int.parse(stdin.readLineSync()!);
     print("Enter your name: ");
    String std_name =stdin.readLineSync()!;
     print("Enter your age: ");
    std_age=int.parse(stdin.readLineSync()!);
     print("Enter your std: ");
    std_std=int.parse(stdin.readLineSync()!);
     print("Enter your moblie: ");
    std_mobile=int.parse(stdin.readLineSync()!);
  }
  void getdata()
  {
    print("Id ${std_id}");
    print("Name ${std_name}");
    print("Age ${std_age}");
    print("Std ${std_std}");
    print("Mobile ${std_mobile}");
  }
}
void main()
{
    std s1=std();
    s1.setdata();
    s1.getdata();
}