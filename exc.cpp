#include <iostream>
#include <string.h>
using namespace std;
int main()
{
	string str;
	int n,i;
	cout<<"the string is:"<<endl;
	cin>>str;
	n=strlen(str);
	for(i=n;i>=0;i--)
	{
		int count=1;
		cout<<n;
		count=i++;
		if(count<=3)
		{
			continue;
		}
		else
		{
			break;
		}
	}
return 0;
}
