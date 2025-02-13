/*
 * MobileGameDemo.cpp
 *
 * This C++ program is a simple demonstration of a game loop,
 * highlighting the popularity of C++ in system programming and game development in the early 2000s.
 * During this era, mobile phones were becoming increasingly popular, 
 * and although smartphones were not yet mainstream, C++ was crucial for developing high-performance applications and games.
 */

#include <iostream>
#include <chrono>
#include <thread>

int main() {
    bool running = true;
    int frame = 0;
    std::cout << "Starting Mobile Game Demo for the year 2000...\n";
    
    // A simple game loop running for 5 frames
    while(running && frame < 5) {
        std::cout << "Frame: " << frame << std::endl;
        std::this_thread::sleep_for(std::chrono::milliseconds(500)); // Simulate a game loop delay
        frame++;
    }
    
    std::cout << "Game demo ended. Thanks for playing!\n";
    return 0;
}
