#include <string>
#include <iostream>

using namespace std;

char choice(string available)
{
    string line;

    while (true)
    {
        cout << "> ";
        getline(cin, line);

        const char c = toupper(line[0]);

        if (available.find(c) != string::npos) return c;
        cout << "invalid input" << endl;
    }
}
