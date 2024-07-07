# I2C_Communication_STM32_Arduino_LED_Control
This project demonstrates communication between an STM32 microcontroller (Blue Pill) and an Arduino board over I2C. The STM32 controls four PWM signals to adjust LED brightness based on data received from the Arduino.

# Overview
The STM32 microcontroller initializes four timers (TIM1, TIM2, TIM3, TIM4) in PWM mode to control LEDs connected to different GPIO pins. The intensity levels of these LEDs are set based on data received over the I2C bus from an Arduino board. The Arduino, acting as the I2C master, sends an array of integers representing PWM values to the STM32.

# Hardware Setup
STM32 Blue Pill (STM32F103C8T6): Main microcontroller board.
Arduino: Used for sending data over the I2C bus.
LEDs: Connected to PWM channels of timers TIM1, TIM2, TIM3, and TIM4 on the STM32.
I2C Interface: STM32 configured as the I2C slave (address 0x05), Arduino as the master.

# How to Use
# STM32 Setup:

Connect LEDs to PWM-capable pins of STM32 (e.g., PA8, PA0, PA6, PB6).
Compile the code using STM32CubeIDE or another compatible IDE.
Flash the firmware onto the STM32 using ST-Link or another debugger.

# Arduino Setup:
Upload the provided Arduino sketch to the Arduino board using the Arduino IDE.
# Operation:
Upon startup, the STM32 microcontroller waits to receive data over I2C from the Arduino.
Once data (an array of 4 integers) is received, it sets PWM values for each timer to control LED brightness accordingly.

# File Structure
STM32/main.c: Main program file for STM32 microcontroller.
Arduino_code.ino: Arduino sketch for I2C communication.
README.md: This file containing project information.


