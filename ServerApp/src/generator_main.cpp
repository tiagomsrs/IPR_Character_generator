#include <iostream>
#include <thread>
#include <chrono>

#include "random_generator.hpp"

int main (void)
{
    while (true) {
        std::cout<<"Hello World!zz"<<std::endl;
        std::cout<< "output: "<< rg::RandomGenerator::GetInstance().GenerateNumber()<<std::endl;
        std::this_thread::sleep_for(std::chrono::seconds(1));

    }
    return EXIT_SUCCESS;
}
