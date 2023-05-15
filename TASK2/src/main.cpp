
#include<iostream>
#include <boost/multiprecision/cpp_int.hpp>
#include <boost/multiprecision/cpp_dec_float.hpp>

using namespace std;

int main()
{
     using bigint   = boost::multiprecision::cpp_int;
    using bigfloat = boost::multiprecision::cpp_dec_float_50;
 bigint x(12345678); 
    bigfloat y("0.26");
    std::cout << "x: " << x << "\n";
    std::cout << "y: " << y << "\n";
    bigfloat result = x.convert_to<bigfloat>() * y;
    bigint z1 = static_cast<bigint>(result);
     std::cout << "Result: " << z1 << "\n";

  

    return 0;
}






