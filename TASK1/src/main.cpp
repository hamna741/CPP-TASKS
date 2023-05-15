#include<iostream>
#include"mymath.h"
#include<random>
#include<chrono>

int main(){
     std::chrono::time_point<std::chrono::system_clock> start, end;
    start = std::chrono::system_clock::now();
    int val1, val2;
    
    for(int index=0; index<1000000;index++){
    val1=100 + (rand() % 101);
    val2=100 + (rand() % 101);
    std::cout<<val1<<"+"<<val2<<"= "<<mymath::add(val1,val2)<<std::endl;
    std::cout<<val1<<"-"<<val2<<"= "<<mymath::subtract(val1,val2)<<std::endl;
    }
    end = std::chrono::system_clock::now();
    std::chrono::duration<double> elapsed_seconds = end - start;
    std::cout << "Execution time: " << elapsed_seconds.count() << "s" << std::endl;
return 0;
}