
## Summary
For your assignment you'll be using the standard C++ library threads to create a small embedded program for an imaginary platform that:
- Reads and reports on an abitrary number of GPIO pins.
- Reads and reports on serial input for an arbitrary number of UART ports.
- Additionally, depending on which GPIO pin or UART port the report originates, the report needs to be sent to a different function.

Intended time: 4-8 hours.

You're free to use anything from C++ standard libraries. Use at most C++20.

## Interface
Required interface functions for testing:

### GPIOInterruptServiceRoutine
This interrupt service routine takes, in order, a uint16_t value indicating the 'pin', and the enum level_e (which is HIGH or LOW) which indicates the current level of the pin.
Fill this function however you need to.
This is where the system will receive GPIO test input.
Validation code would provide input here.

### UARTInterruptServiceRoutine
This interrupt service routine takes, in order, a uint16_t value indicating the UART 'port', and a single char which indicates the received character.
Fill this however you need to.
This is where the system will receive UART test input.
Each message starts with a [, and ends with a ]; but these (and only these) are to be excluded when reported.
Note that \ is an escape character. So a received message "[receive \] and \\ characters]" is intended to be reported as "receive ] and \ characters"
Validation code would provide input here.

### ReportMonitorMessage
This function takes takes an std::string.
Feel free to write (and share) an implementation yourself to test your output.
Your code will call this function to transmit the reports (which are of type Monitor).
Validation code would implement this function and check output against an expected set.

### ReportErrorMessage
This function takes an std::string.
Feel free to write (and share) an implementation yourself to test your output.
Your code will call this function to transmit the reports (which are of type Error).
Validation code would implement this function and check output against an expected set.

### DisableInterrupts
This function takes no arguments.
Turns off all interrupts.
Validation code would use this to stop calling the GPIOInterruptServiceRoutine and UARTInterruptServiceRoutine interrupt service routines until re-enabled.

### EnableInterrupts
This function takes no arguments.
Enables all interrupts.
Validation code would be re-enabled to call the GPIOInterruptServiceRoutine and UARTInterruptServiceRoutine interrupt service routines.

## Your tasks
1. Create a class Buncher to receive reports, bunch them by sets of 5 and send them to the appropriate functions (ReportMonitorMessage or ReportErrorMessage). There will be one object of this class per output function (i.e. ReportMonitorMessage and ReportErrorMessage).
2. Create a class that converts GPIO events to reports. Reported messages will take the form of "[pin:<PIN NUMBER>]: <HIGH/LOW>". These reported messages are provided to a Buncher object.
3. Create a class that converts UART messages to reports. Reported messages will take the form of "[UART:<PORT NUMBER>]: <MESSAGE>". These reported messages are provided to a Buncher object.
4. Anything that you need to accomplish above. Feel free.

## Things to look out for
- General usage of C++ and the standard library.
- Proper thread/task usage.
- Proper interrupt handling.
- Try to keep redundant code to a minimum.
- Optimizations to the provided code. Did I maybe make a mistake somewhere?
- BONUS: If you have time for it: improve how the program is validated. Bonus points if it's automated.

## Test case
- GPIO pins 1 and 3 to send a message to ReportErrorMessage when they become HIGH; and to ReportMonitorMessage when they become LOW
- GPIO pins 2 and 4 send a message to ReportMonitorMessage on any change.
- UART port 0 sends message reports to ReportErrorMessage.
- UART port 1 sends message reports to ReportMonitorMessage.

## Scripts
> configure.sh
Configures the project. Call this first. Should only be called once.

> build.sh
Builds the project.

> run.sh
Runs the project.

