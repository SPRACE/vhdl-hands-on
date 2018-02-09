# VHDL Hands-On

## Overview
This repository contains the source files of a few exercises created for introducing VHDL and FPGA concepts. They were conceived as part of a hands-on given by our group. The files are implemented in a Xilinx KC705 board, which contains a Kintex-7. However, they could be implemented in any FPGA kit requiring only minimal changes.

## Exercises

### Pattern Checker
#### Idea
In this this project, the LED will only blink when the push buttons are pressed in a patter that matches the switches'. 
#### Used Resources
- 3 switches
- 3 push-buttons
- 1 led

### Car Hazard Light
#### Idea
The project should emulate a car hazard light. When the switch is turned on, the LED should start blinking at a fixed rate (a suggested rate is two blinks per second).
**P.S.:** There is a bug in this code. The LED blinks every second, and not two times per second. Can you fix it? ;) 

#### Used Resources
- Onboard clock source
- 1 switch
- 1 led

### Sequential LED Blinking
#### Idea
The KC705 contains a row of 8 LEDs. Each one should be turned on for a second, before it turns of and the next one it turned on and so on. After the last one, the first LED should follow, restarting the cycle. 
#### Used Resources
- Onboard clock source
- 8 LEDs

### Counter
#### Idea
The 4 LEDs represent a binary 4 bits number. Every time the push-button is pressed, the counter should increase. After the maximum number is reached, it should overflow, returning to zero.
#### Used Resources
- 1 push-button 
- 4 LEDs
