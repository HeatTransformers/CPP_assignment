#include "platform.hpp"

#include <iostream>

//BONUS TODO: Think of a better way to validate the proper working of your code.

void DisableInterrupts()
{
    std::cout << "<< interrupts DISABLED >>" << std::endl;
}

void EnableInterrupts()
{
    std::cout << "<< interrupts ENABLED >>" << std::endl;
}

void ReportMonitorMessage(std::string monitorMessage)
{
    std::cout << "[MON](" << monitorMessage << ")" << std::endl;
}

void ReportErrorMessage(std::string errorMessage)
{
    std::cout << "[ERR](" << errorMessage << ")" << std::endl;
}
