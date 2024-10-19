#include <stdio.h>
#include <stdlib.h>
#include <time.h>

// Function to generate random number
int generateRandomNumber() {
    srand(time(0)); // Seed for random number generation
    return rand() % 100; // Generate random number between 0 and 100
}

