#include <vector>
#include "pi_approx.h"
#include "approximations.h"

double* approximations(const std::vector<int>& intervals) {
    int size = intervals.size();
    double* results = new double[size];

    //loop through each interval and calculate pi approximation
    for (int i = 0; i < size; ++i) {
        //call the pi_approx function for the current interval and store the result
        results[i] = pi_approx(intervals[i]).approx;
    }
    //return the results
    return results;
}