#include"mymath.h"
#include<iostream>
#include<time.h>

int main(){
 clock_t tStart = clock();
    for (int count =0; count<1000000;count++){
        int val1= 100+(rand() % 101);
        int val2= 100+(rand() % 101);
          std::cout<<val1<<"+"<<val2<<"= "<<mymath::add(val1,val2)<<std::endl;
         std::cout<<val1<<"-"<<val2<<"= "<<mymath::subtract(val1,val2)<<std::endl;
    }
  std::cout<<"EXECUTION TIME= "<<(double)(clock() - tStart)/CLOCKS_PER_SEC<<std::endl;
    return 0;
}