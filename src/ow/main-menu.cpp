#include <iostream>

#include <ow/menus.hpp>
#include <ow/menu-helper.hpp>

using namespace std;

bool main_menu()
{
    cout << "1) insert new entry" << endl << endl
         << "F) flush" << endl
         << "Q) quit" << endl << endl;

    switch(choice("1FQ"))
    {
        case '1':
            insert_menu();
            break;

        case 'F':
            cout << "not available yet." << endl;
            break;

        case 'Q':
            cout << "bye ..." << endl;
            return false;
    }

    return true;
}
