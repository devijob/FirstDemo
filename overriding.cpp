#include<iostream>
using namespace std;
class college
{
int clg_code;
string clg_name;
}
public department:public college
{
void attendence(int leave,int total_days)
{
	int absence;
	absence=total_days-leave;
	cout<<"the student took"<<absence<<"days leave in this month"<<endl;
}

void attendence(int leave,int total_days)
{
	int absence,detection_salary;
	absence=total_days-leave;
	cout<<"per day  salary:"<<endl;
	cin>>sal_per_day;
	detection_salary=absence*sal_per_day;
	cout<<"the salary detection for staff:"<<detection_salary<<endl;
}
}
void main()
{
	department dept;
	dept.attendence(2,25);
}
}
}
