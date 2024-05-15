import 'dart:io';

void main()
{
 print('Enter first name :');
  String? firstname = stdin.readLineSync();

 print('nter last name : ');
  String? lastname = stdin.readLineSync(); 

 String fullname = '$firstname $lastname';

 print('Full Name : $fullname');
}