#pragma once

#include <cstdint>
#include <string>

enum level_e
{
    LOW,
    HIGH
};

extern void DisableInterrupts();
extern void EnableInterrupts();

extern void GPIOInterruptServiceRoutine(uint16_t pin, level_e level);
extern void UARTInterruptServiceRoutine(uint16_t port, char c);

extern void ReportMonitorMessage(std::string monitorMessage);
extern void ReportErrorMessage(std::string errorMessage);
