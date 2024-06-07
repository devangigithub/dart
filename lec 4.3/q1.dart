import 'dart:io';


class a
{
  int feet=0;
  int inch=0;
  
  void aa()
  {
    print("Enter feet ");
       feet=int.parse(stdin.readLineSync()!);
      print("Enter inch ");
       inch=int.parse(stdin.readLineSync()!);
  }
  void setdata()
  {
    if (inch>= 12) 
    {
      
      feet++;
       inch=inch-12;
    }
  
  }
  void getdata()
  {
    print("feet ${this.feet}");
    print("inch ${this.inch}");
  }
   
}

void main()
{
  a a1=a();

  a1.aa();
  a1.setdata();
  a1.getdata(); 
}