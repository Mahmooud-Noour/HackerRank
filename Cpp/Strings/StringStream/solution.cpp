/*
====================================================
 Problem   : StringStream
 Platform  : HackerRank
 Domain    : Strings
 Difficulty: Easy

 Approach:
 - Use a stringstream to tokenize the input string.
 - Extract integers sequentially using the extraction operator (>>).
 - Read and ignore comma separators using a dummy character.
 - Store the parsed integers into a vector and return it.

====================================================
*/

#include <sstream>
#include <vector>
#include <iostream>
using namespace std;

vector<int> parseInts(string str)
{
    vector<int> v;
    stringstream ss(str);

    int num;
    char comma;

    while (ss >> num)
    {
        v.push_back(num);
        ss >> comma;
    }
    return  v;
}

int main() {
    string str;
    cin >> str;
    vector<int> integers = parseInts(str);
    for (int i = 0; i < integers.size(); i++) {
        cout << integers[i] << "\n";
    }

    return 0;
}

