#include <iostream>
#include <vector>
#include "pi_approx.h"
#include "approximations.h"

int main() {
    //calculate pi approximation for a single interval (10000)

    PiResults pi1 = pi_approx(10000);
    std::cout << "Pi Approximation: " << pi1.approx << ", Error: " << pi1.error << std::endl;

    //calculate pi approximations for multiple intervals
    std::vector<int> nums = {101, 102, 103, 104, 105, 106, 107};
    double* approx1 = approximations(nums);

    //output the results for each interval
    for (int i = 0; i < nums.size(); i++) {
        std::cout << "Pi Approximation for " << nums[i] << " intervals: " << approx1[i] << std::endl;
    }

    //free the memory
    delete[] approx1;

    return 0;
}