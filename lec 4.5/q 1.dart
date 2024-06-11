void main()
{
  String name ="1234acchgv";

  try {
    int number=int.parse(name);// string to int
    print("number $number");//print only number

    
  } catch (w) {
    if(w is FormatException)
  {
    print("Input is not in the correct format.");
  }
  
  }
  finally{
    print("This code runs regardless of whether an exception was thrown or not.");
  }
}