#include <iostream>
using namespace std;

//question 3
int main() {
    //initiate all the variables
    int f1 = 1;
    int f2 = 1;
    int ff = 1;

    //calculates all fibonacci numbers
    while (ff <= 4000000){
        cout << ff << ",";
        f1 = f2;
        f2 = ff;
        ff = f1 + f2;
    }
    return 0;
}
