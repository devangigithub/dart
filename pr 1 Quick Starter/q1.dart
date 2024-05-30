void main()
{
    List<int> number =[1,2,3,-1,-2,-3,4,5,6,-4,-5,-6,7,8,9,-7,-8,-9];
    for(int i=0;i<number.length;i++)
    {
        if(number[i]<0)
        {
            print(number[i]);
        }
    }  
}