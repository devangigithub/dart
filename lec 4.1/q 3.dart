import 'dart:io';

void addition(int a,int b)
{
  	print("Addition ${a+b}");
}

void substraction(int a,int b)
{
  	print("Substraction ${a-b}");
}
void Multiplication(int a,int b)
{
	print("Multiplication ${a*b}");
}

void Division(int a,int b)
{
  	print("Division ${a/b}");
}
void modual(int a,int b)
{
  	print("Modual ${a%b}");
}

void main()
{
  int choice;
  int a;
  int b;

  while(true)
  {

	print("Press 1 for +\n");
	print("Press 2 for -\n");
	print("Press 3 for *\n");
	print("Press 4 for /\n");
	print("Press 5 for %\n");
	print("Press 0 for the exit\n");
	
	print("Enter your choice ");
	choice=int.parse(stdin.readLineSync()!);

	switch(choice)
	{
		case 1:		
		
			print("Enter the first number:");
		   a=int.parse(stdin.readLineSync()!); 
		
			print("Enter the second number");
		  b=int.parse(stdin.readLineSync()!); 
		    
		    addition(a,b);
		    break;
		    
		case 2:	
			
		
			print("Enter the first number:");
      a=int.parse(stdin.readLineSync()!);
		
			print("Enter the second number");
		    b=int.parse(stdin.readLineSync()!);  
		    
		    substraction(a,b);
		    break;
		  
		case 3:
		   			
		
			print("Enter the first number:");
		    a=int.parse(stdin.readLineSync()!); 
		
			print("Enter the second number");
		     b=int.parse(stdin.readLineSync()!); 
		     
		    Multiplication(a,b);
		    break;
		  
		case 4:	
			 	
		
			print("Enter the first number:");
		     a=int.parse(stdin.readLineSync()!); 
		
			print("Enter the second number");
		     b=int.parse(stdin.readLineSync()!); 
		    
		    Division(a,b);
		    break;
		 
		case 5:		
		
			
			print("Enter the first number:");
		    a=int.parse(stdin.readLineSync()!); 
		
			print("Enter the second number");
		     b=int.parse(stdin.readLineSync()!); 
		    
		    modual(a,b);
		    break;
		  
		case 0:
			
		print("Thanks for connecting us...\nVisit again!!!");	
			return ;
		
		default:
			
		print("Invalid choice");
		 	return ;
	}
 }
}


