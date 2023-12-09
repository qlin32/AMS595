#include <cmath>
#include "pi_approx.h"

PiResults pi_approx(int N) {
    //setting variables
    double dx = 1.0 / N;
    double sum = 0.0;
    double xk, xk1;

    //go through all subintervals
    for (int i = 1; i <= N; i++) {

        //calculate the current subinterval and previous usbinterval
        xk = i * dx;
        xk1 = (i - 1) * dx;
        //calculate the area add it to the sum
        sum += dx * ((sqrt(1 - pow(xk, 2)) + sqrt(1 - pow(xk1, 2))) / 2);
    }
    //find the approximation and error of pi based on the sum
    double appropi = 4 * sum;
    double pierror = abs(appropi - M_PI);

    PiResults result;
    result.approx = appropi;
    result.error = pierror;

    //return result
    return result;
}