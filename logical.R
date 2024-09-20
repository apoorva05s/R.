("a"&"b")
(10&20)
(0&10)
(-1&1)
{
cgpa=as.double(readline("Enter cgpa: "))
cer= readline("any certification done? (yes/no)")
}
#case1
eleg=((cgpa>8.0)&&(cer=="yes"))
eleg
#case2
eleg=((cgpa>8.0)||(cer=="yes"))
eleg
