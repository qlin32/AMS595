#include <iostream>
#include <vector>
using namespace std;

//function that takes number n and displays the first n rows of pascal triangle
void pascal(int n) {
    //go through all rows
    for (int k = 1; k <= n; k++) {
        int j = 1;

        //go through each element in the row
        for (int i = 1; i <= k; i++) {
            //print the current element
            cout << j << " ";
            //calculates next element
            j = j * (k - i) / i;
        }
        cout << endl;
    }
}

int main() {
    //declare n as 10
    int n = 10;

    cout << "The first " << n << " rows of Pascal's Triangle are: \n";
    pascal(n);

    return 0;
}