



void res(int i,int j,int k,[int l=0,int m=0])
{
  int sdd=i+j+k+l+m;
  double per=sdd/100;
  print("sdd ${i+j+k+l+m}");
  print("per ${sdd/100}");
}

void main()
{
  res(100, 100, 100, 100, 100);
}