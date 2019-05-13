#include<iostream>
using namespace std;
class test
{
	public:test();
};
test::test(){
	cout<<"test called\n";
}
int main()
{
	cout<<"start\n";
	test t1();
	cout<<"end\n";
	return 0;
}
