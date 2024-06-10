import 'dart:io';
int cube(int i)
{
  return i*i*i;
}
void main()
{
 print("Enter any number :");
 int i= int .parse(stdin.readLineSync()!);

print("cube ${cube(i)}");
}