using System;
using System.Runtime.InteropServices;
using Microsoft.Quantum.Simulation.Simulators;
using randomNumbers; 

class Program
{
    // P/Invoke to call the C function
    [DllImport("random_generator.so", CallingConvention = CallingConvention.Cdecl)]
    public static extern int generateRandomNumber();

    static void Main(string[] args)
    {
        
        long quantumRandomNumber=0;
        for(int i=0; i<100; i++)
        {
            // Run the Q# program
            using (var simulator = new QuantumSimulator())
            {
                int n = 8; // Number of bits for the random number
                quantumRandomNumber = RandomNumInRange.Run(simulator, n).Result;
                Console.Write($"Quantum Random Number: {quantumRandomNumber} -- ");
            }

            // Run the C program
            int classicalRandomNumber = generateRandomNumber();
            Console.Write($"Classical Random Number: {classicalRandomNumber}\n");
        }
    }
}
