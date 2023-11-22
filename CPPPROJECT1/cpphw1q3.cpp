#include <iostream>
using namespace std;

int main() {
    int f1 = 1;
    int f2 = 1;
    int ff = 1;

    while (ff <= 4000000){
        cout << ff << ",";
        f1 = f2;
        f2 = ff;
        ff = f1 + f2;
    }
    return 0;
}
