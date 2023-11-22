#include <iostream>
#include <vector>
using namespace std;

//vector print function from question 2
void print_vector(vector<int> v) {
    for (int i : v){
        cout << i << " ";
    }
    cout << "\n";
}

//question 4a that determines if a number is prime
bool isprime(int n) {
    //declare variable result and set it to true by default
    bool result = true;

    //if number is less than or equal to one then its not prime
    if (n <= 1){
        result = false;
    }
    /*for loop to divide number by 2 up to the number itself and see if any numbers between 2 and n
    divides the number, if not its prime, if yes its not prime*/
    for (int i = 2; i * i <= n; i++){
        if (n % i == 0) {
            result = false;
        }
    }

    return result;
}
void test_isprime() {
    cout << "isprime(2) = " << isprime(2) << '\n';
    cout << "isprime(10) = " << isprime(10) << '\n';
    cout << "isprime(17) = " << isprime(17) << '\n';
}

//question 4b we make a function that displays all the factors of n
vector<int> factorize(int n) {
    vector<int> answer;
    //a for loop that checks if n can be divided by i and add i to the factors of n
    for (int i = 1; i <= n; i++) {
        if (n%i == 0) {
            answer.push_back(i);
        }

    }
    return answer;
}
void test_factorize() {
    print_vector(factorize(2));
    print_vector(factorize(72));
    print_vector(factorize(196));
}


//question 4c finds the factors of n and uses previous functions to determine if the factors are prime
vector<int> prime_factorize(int n) {
    vector<int> answer;
    vector<int> allfac;
    allfac = factorize(n);
    //for loop that checks if i is prime and add i to the prime factors of n
    for (int i : allfac){
        if(isprime(i) == true){
            answer.push_back(i);
        }
    }
    return answer;
}

void test_prime_factorize() {
    print_vector(prime_factorize(2));
    print_vector(prime_factorize(72));
    print_vector(prime_factorize(196));
}


int main() {
    test_isprime();
    test_factorize();
    test_prime_factorize();

    return 0;
}