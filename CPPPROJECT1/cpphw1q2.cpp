#include <iostream>
#include <vector>
using namespace std;

/*in question 2, we write a program to print a vector variable*/
//declare function that takes a vector and prints it
void print_vector(vector<int> v) {
    //for loop go through every element of the vector and prints it
    for (int i : v){
        cout << i << " ";
    }
    cout << "\n";
}

int main() {
    //test the function
    vector <int> v1 {3,5,6,9};
    vector <int> v2 {4,5,6,9};

    print_vector(v1);
    print_vector(v2);

    return 0;
}
