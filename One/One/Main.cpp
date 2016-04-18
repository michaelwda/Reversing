#include <iostream>
#include <string>

using namespace std;

int main()
{
	cout << "Please type the password:"<<endl;
	string password;

	getline(cin, password);

	if(password=="secret pass 123")
	{
		cout << "top secret message!" << endl;
	}
	else
	{
		cout << "wrong password!" << endl;
	}

	getchar();

	return 0;
}