#include <iostream>
#include "calculator.h"

int main()
{
    Calculator calculator;

    double a = 10;
    double b = 4;

    std::cout << "Add: " << calculator.Add(a, b) << '\n';
    std::cout << "Sub: " << calculator.Sub(a, b) << '\n';

    return 0;
}
