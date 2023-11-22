#include <iostream>
using namespace std;

/*in question 1, we convert a matlab program to c++. This program takes user number input and uses a 
switch statement to classify the input.*/
int main() {

    //declare variable n, ask the user to input a number and store it as n
    int n;
    cout << "Enter a number: ";
    cin >> n;

    //switch statement to classify the number input into 1, 0, -1, and other number
    switch (n) {
        case -1:
            cout << "negative one" << endl;
            break;
        case 0:
            cout << "zero" << endl;
            break;
        case 1:
            cout << "positive one" << endl;
            break;
        default:
            cout << "other value" << endl;
            break;
    }

    return 0;
}