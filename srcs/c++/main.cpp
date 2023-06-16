#include <iostream>
#include <vector>
#include <utility>
using namespace std;

int main()
{
	///fizz buzz
	typedef pair<int, string> divisor;
	vector< pair<int, string> > divisors;

	///all divisors
	divisors.push_back(divisor(3, "Fizz"));
	divisors.push_back(divisor(5, "Buzz"));

	//for each number i
	for(size_t i = 1; i <= 100; ++i)
	{
		string output = ""; 

		//for each divisor
		for(size_t j = 0; j <  divisors.size(); ++j)
		{
			//if it divides by the divisor add it's string to the output
			if(i % divisors[j].first == 0)
			{
				output += divisors[j].second;
			}
		}

		//if not string is outputed simply print the number
		if(output.empty())
			cout << i << endl;
		else
			cout << output << endl;
	}
}
