import 'dart:io';


void main()
{
	int choice;
	do	
 {

	print('Press 1 for +\n');
	print('Press 2 for -\n');
	print('Press 3 for *\n');
	print('Press 4 for /\n');
	print('Press 5 for %\n');
	print('Press 0 for the exit\n');
	
	print('Enter your choice ');
	choice=int.parse(stdin.readLineSync()!);

	switch(choice)
	{
		case 1:		
		
			print('Enter the first number:');
		    int a=int.parse(stdin.readLineSync()!);
		
			print('Enter the first number:');
		    int b=int.parse(stdin.readLineSync()!);
		    
		    print('addition :${a+b}');

		    break;
		    
		case 2:	
			
      print('Enter the first number:');
		    int a=int.parse(stdin.readLineSync()!);
		
			print('Enter the first number:');
		    int b=int.parse(stdin.readLineSync()!);
  
			
		    print('substraction :${a-b}');
		    break;
		  
		case 3:
		  print('Enter the first number:');
		    int a=int.parse(stdin.readLineSync()!);
		
			print('Enter the first number:');
		    int b=int.parse(stdin.readLineSync()!); 			
		
			  print('Multiplication :${a*b}');
		    break;
		  
		case 4:	
			print('Enter the first number:');
		    int a=int.parse(stdin.readLineSync()!);
		
			print('Enter the first number:');
		    int b=int.parse(stdin.readLineSync()!); 				
		 
         print('Division :${a/b}');
			
		    break;
		 
		case 5:		
	    print('Enter the first number:');
		    int a=int.parse(stdin.readLineSync()!);
		
			print('Enter the first number:');
		    int b=int.parse(stdin.readLineSync()!);
		    
        print('modua :${a%b}');
		   
		    break;
		  
		case 0:
			
		print('Thanks for connecting us...\nVisit again!!!');	
			// return 0;
      break;
		
		default:
			
		print('Invalid choice');
		 	// return 0;
      break;
	}
 }
 while(choice!=0);
}