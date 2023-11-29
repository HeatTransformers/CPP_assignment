#include "platform.hpp"

#include <iostream>
#include <cstdint>

void GPIOInterruptServiceRoutine(uint16_t pin, level_e level)
{
    // This function pretends to be an interrupt service routine.
    //TODO: Implement this
}

void UARTInterruptServiceRoutine(uint16_t port, char c)
{
    // This function pretends to be an interrupt service routine.
    //TODO: Implement this
}

int main()
{
    std::cout << "Hello world!" << std::endl;

    return 0;
}
